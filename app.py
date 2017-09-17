from flask import Flask, request, url_for, redirect, render_template, session, escape, flash, make_response
import MySQLdb
from collections import Counter

app = Flask(__name__)
app.config['SECRET_KEY'] = "pefx86764asyuys23424rgwrhz2553462"
#app.config['SERVER_NAME'] = "192.168.0.100:5000"

# Open database connection
#db = MySQLdb.connect(host="localhost", user="root", passwd="aslk", db="ecommerce")
db = MySQLdb.connect(host="localhost", user="root", passwd="", db="TESTDB2")
db.autocommit(True)
cursor = db.cursor()
dictcursor = db.cursor(MySQLdb.cursors.DictCursor)

@app.after_request
def add_header(response):
    # response.cache_control.no_store = True
    if 'Cache-Control' not in response.headers:
        response.headers['Cache-Control'] = 'no-store'
    return response


def price_range(product,price_from,price_to):
	if product.get('DISCOUNT'):
		if (product.get('PRICE') - product.get('PRICE')/100*product.get('DISCOUNT')) in range(price_from,price_to):
			return True
		else:
			return	None
	else:
		if product.get('PRICE') in range(price_from,price_to):
			return True
		else:
			return None


@app.route('/', methods = ['GET', 'POST'])
def home():
	if 'username' in session:      
		return render_template('home.html')
	return render_template('home.html')


@app.route('/login' , methods=['GET','POST'])
def login():
	if request.method == 'POST':
		email_id = request.form['InputEmail'] 
		password = request.form['InputPassword']
		sql = '''SELECT PASSWORD FROM users_info WHERE EMAIL_ID = '{}';'''.format(email_id)
		cursor.execute(sql)
		db_password = cursor.fetchone()[0]
		if db_password == password:
			sql = '''SELECT NAME FROM users_info WHERE EMAIL_ID = '{}';'''.format(email_id)
			cursor.execute(sql)
			username = cursor.fetchone()[0]
			print username
			session['username'] = username
			return redirect(url_for('home'))
	return "Access denied"




@app.route('/register' , methods=['GET','POST'])
def register():
	if request.method == 'POST':
		name = request.form['InputName']
		email_id = request.form['InputEmail'] 
		password1 = request.form['InputPassword1']
		password2 = request.form['InputPassword2']
		address = request.form['InputAddress']		
		pin = int(request.form['InputPin'])
		phone = request.form['InputPhone']
		if password1 == password2:
			sql = ''' INSERT INTO users_info (NAME,EMAIL_ID,PASSWORD,ADDRESS,PIN,PHONE) VALUES ('{}','{}','{}','{}','{}','{}'); '''.format(name,email_id,password1,address,pin,phone)
			print sql
			cursor.execute(sql)
			db.commit();	    
			return redirect(url_for('home'))
		else:
			return "pass1 != pass2"
		return "Something went wrong"


@app.route('/logout')
def logout():
    session.pop('username', None)
    return redirect(url_for('home'))


@app.route('/search', methods=['GET','POST'])
def search():
	cname = request.args.get('cname')
	subcname = request.args.get('subcname')
	query = request.args.get('query')
	discount =request.args.get('discount')
	if discount:
		sql = ''' SELECT * FROM products WHERE DISCOUNT != 0 '''
		dictcursor.execute(sql)
		results_dict = dictcursor.fetchall()
		brands = list(set([product.get('BRAND') for product in results_dict]))
		genders = list(set([product.get('GENDER') for product in results_dict]))
		category = list(set([product.get('CNAME') for product in results_dict]))
		sizes = list(set([product.get('SIZE') for product in results_dict]))
		discount = list(set([product.get('DISCOUNT') for product in results_dict if product.get('DISCOUNT') != 0]))
		return render_template('search.html',results_dict=results_dict,brands=brands,category=category,genders=genders,sizes=sizes,discount=discount)
	if subcname:
		sql = ''' SELECT * FROM products WHERE SUB_CATEGORY = '{}' '''.format(subcname.upper())
		dictcursor.execute(sql)
		results_dict = dictcursor.fetchall()
		brands = list(set([product.get('BRAND') for product in results_dict]))
		genders = list(set([product.get('GENDER') for product in results_dict]))
		category = list(set([product.get('CNAME') for product in results_dict]))
		sizes = list(set([product.get('SIZE') for product in results_dict]))
		discount = list(set([product.get('DISCOUNT') for product in results_dict if product.get('DISCOUNT') != 0]))
		return render_template('search.html',results_dict=results_dict,brands=brands,category=category,genders=genders,sizes=sizes,discount=discount)
	if cname:
		sql = ''' SELECT * FROM products WHERE CNAME = '{}' '''.format(cname.upper())
		dictcursor.execute(sql)
		results_dict = dictcursor.fetchall()
		brands = list(set([product.get('BRAND') for product in results_dict]))
		genders = list(set([product.get('GENDER') for product in results_dict]))
		category = list(set([product.get('CNAME') for product in results_dict]))
		sizes = list(set([product.get('SIZE') for product in results_dict]))
		discount = list(set([product.get('DISCOUNT') for product in results_dict if product.get('DISCOUNT') != 0]))
		return render_template('search.html',results_dict=results_dict,brands=brands,category=category,genders=genders,sizes=sizes,discount=discount)
	if query:
		if query.endswith("s"):
			query = query[:-1]
		sql = '''SELECT * FROM products WHERE PNAME LIKE '%{0}%' OR CNAME LIKE '%{0}%' OR SUB_CATEGORY LIKE '%{0}%' OR BRAND LIKE '%{0}%';'''.format(query.upper())
		cursor.execute(sql)
		dictcursor.execute(sql)
		results_dict = dictcursor.fetchall()
		brands = list(set([product.get('BRAND') for product in results_dict]))
		genders = list(set([product.get('GENDER') for product in results_dict]))
		category = list(set([product.get('CNAME') for product in results_dict]))
		sizes = list(set([product.get('SIZE') for product in results_dict]))
		discount = list(set([product.get('DISCOUNT') for product in results_dict if product.get('DISCOUNT') != 0]))
		return render_template('search.html',results_dict=results_dict,brands=brands,category=category,genders=genders,sizes=sizes,discount=discount)
	if request.method == 'POST':
		results_dict = eval(request.form.get('results_dict'))
		filter_category = request.form.get('category')
		filter_gender = request.form.get('gender')
		filter_brands = request.form.getlist('brand')
		filter_sizes = request.form.getlist('size')
		filter_price_from,filter_price_to = request.form.get('price_range').split(',')
		filter_discount = request.form.get('discount')
		if filter_category:
			filtered_result = [product for product in results_dict if product.get('CNAME') == filter_category]
		if filter_brands:
			filtered_result[:] = [product for product in filtered_result if product.get('BRAND') in filter_brands]
		if filter_gender:
			filtered_result[:] = [product for product in filtered_result if product.get('GENDER') == filter_gender]
		if filter_price_from != u'None':
			filtered_result[:] = [product for product in filtered_result if price_range(product,int(filter_price_from),int(filter_price_to))]
		if filter_sizes:
			filtered_result[:] = [product for product in filtered_result if product.get('SIZE') in filter_sizes]
		if filter_discount == 'Y':
			filtered_result[:] = [product for product in filtered_result if product.get('DISCOUNT') != 0]
		brands = list(set([product.get('BRAND') for product in filtered_result]))
		genders = list(set([product.get('GENDER') for product in filtered_result]))
		category = list(set([product.get('CNAME') for product in filtered_result]))
		sizes = list(set([product.get('SIZE') for product in filtered_result]))
		discount = list(set([product.get('DISCOUNT') for product in filtered_result if product.get('DISCOUNT') != 0]))
		return render_template('search.html',results_dict=filtered_result,brands=brands,category=category,genders=genders,sizes=sizes,discount=discount)
	return render_template('search.html',results_dict=None,brands=None,category=None,genders=None,sizes=None,discount=None)


@app.route('/product',methods=['GET','POST'])
def product():
	if request.method == 'GET':
		pid = request.args.get('pid')
		sql = '''SELECT * from products WHERE PID = '{}';'''.format(pid)
		dictcursor.execute(sql)
		result_dict = dictcursor.fetchone()
		if result_dict.get('CNAME') == 'SOFTWARE':
			sql =''' SELECT * from project WHERE PID = '{}';'''.format(pid)
			dictcursor.execute(sql)
			project_data = dictcursor.fetchone()
			print project_data['ABSTRACT']
		else:
			project_data = None
		sql = '''SELECT REVIEW FROM REVIEW WHERE PID = '{}';'''.format(pid)
		dictcursor.execute(sql)
		reviews = dictcursor.fetchall()
		return render_template('product.html',result_dict=result_dict,reviews=reviews,project_data=project_data)
	if request.method == 'POST':
		pid = request.form.get('pid')
		sql = '''SELECT * from products WHERE PID = '{}';'''.format(pid)
		dictcursor.execute(sql)
		result_dict = dictcursor.fetchone()
		if result_dict.get('CNAME') == 'SOFTWARE':
			sql =''' SELECT * from project WHERE PID = '{}';'''.format(pid)
			dictcursor.execute(sql)
			project_data = dictcursor.fetchone()
		else:
			project_data = None
		cur_review = request.form.get('review')
		sql = ''' INSERT INTO REVIEW (PID,REVIEW) VALUES ('{}','{}'); '''.format(pid,cur_review)
		dictcursor.execute(sql)
		db.commit()
		sql = '''SELECT REVIEW FROM REVIEW WHERE PID = '{}';'''.format(pid)
		dictcursor.execute(sql)
		reviews = dictcursor.fetchall()
		return render_template('product.html',result_dict=result_dict,reviews=reviews,project_data=project_data)


@app.route('/cart')
def cart():
	if session.get('cart'):
		pids = session.get('cart').split(',')
		pids_byte = [pid.encode('utf-8') for pid in pids]
		if len(pids_byte) > 1:
			sql = ''' SELECT * FROM products WHERE PID IN {}; '''.format(tuple(pids_byte))
		else:
			sql = ''' SELECT * FROM products WHERE PID = '{}'; '''.format(pids_byte[0])
		quantity = Counter(pids_byte)
		dictcursor.execute(sql)
		results_dict = dictcursor.fetchall()
		return render_template('cart.html',results_dict=results_dict,quantity=dict(quantity))
	else:
		return render_template('cart.html',results_dict=None,quantity=None)


@app.route('/add_to_cart')
def add_to_cart():
	# session.pop('cart',None)
	# session.pop('item_number',None)
	pid = request.args.get('pid')
	if 'cart' not in session:
		session['cart'] = pid
		session['item_number'] = 1
	else:
		session['cart'] += ','+pid
		print session
		session['item_number'] = session['item_number'] + 1
	return redirect('/product?pid='+pid)

@app.route('/remove_from_cart')
def remove_from_cart():
	pid = request.args.get('pid')
	session['cart'] = session['cart'].replace(pid,'',1)
	session['item_number'] = session['item_number'] - 1
	return redirect('/cart')

@app.route('/checkout',methods=['GET','POST'])
def checkout():
	if request.args.get('pid') is None and session.get('cart') is None:
		return render_template('checkout.html',results_dict=None,total_price=None,quantity=None,user_details=None)
	if request.args.get('pid'):
		pid = request.args.get('pid')
		sql = ''' SELECT * FROM products WHERE PID = '{}'; '''.format(pid)
		quantity = dict()
		quantity[pid] = 1
	else:
		pids = session.get('cart').split(',')
		pids_byte = [pid.encode('utf-8') for pid in pids]
		print pids_byte
		sql = ''' SELECT * FROM products WHERE PID IN ({}); '''.format((', '.join('"' + item + '"' for item in pids_byte)))
		print sql
		quantity = Counter(pids_byte)
	dictcursor.execute(sql)
	results_dict = dictcursor.fetchall()
	total_price = sum([(product.get('PRICE') - product.get('PRICE')/100*product.get('DISCOUNT'))*quantity.get(product.get('PID')) for product in results_dict])
	sql = ''' SELECT * FROM users_info WHERE NAME = '{}';'''.format(session.get('username'))
	dictcursor.execute(sql)
	user_details = dictcursor.fetchone()
	return render_template('checkout.html',results_dict=results_dict,total_price=total_price,quantity=quantity,user_details=user_details)

@app.route('/confirm_order')
def confirm_order():
	session.pop('cart',None)
	session.pop('item_number',None)
	flash('Your order has been successfully placed')
	return redirect('/')




if __name__ == '__main__':
   app.run(debug=True)
