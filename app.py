from flask import Flask, request, url_for, redirect, render_template, session, escape
import MySQLdb


app = Flask(__name__)
app.config['SECRET_KEY'] = "pefx86764asyuys23424rgwrhz2553462"
#app.config['SERVER_NAME'] = "192.168.0.100:5000"

# Open database connection
#db = MySQLdb.connect(host="localhost", user="root", passwd="aslk", db="ecommerce")
db = MySQLdb.connect(host="localhost", user="root", passwd="aslk", db="TESTDB2")
cursor = db.cursor()
dictcursor = db.cursor(MySQLdb.cursors.DictCursor)


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
		sql = '''SELECT PASSWORD FROM USERS WHERE EMAIL_ID = '{}';'''.format(email_id)
		cursor.execute(sql)
		db_password = cursor.fetchone()[0]
		if db_password == password:
			sql = '''SELECT NAME FROM USERS WHERE EMAIL_ID = '{}';'''.format(email_id)
			cursor.execute(sql)
			username = cursor.fetchone()[0]
			print username
			session['username'] = username
			print "added to session"
			return redirect(url_for('home'))
	return "Something went wrong"




@app.route('/register' , methods=['GET','POST'])
def register():
	if request.method == 'POST':
		name = request.form['InputName']
		email_id = request.form['InputEmail'] 
		password1 = request.form['InputPassword1']
		password2 = request.form['InputPassword2']
		address = request.form['InputAddress']		
		pin = int(request.form['InputPin'])
		phone = int(request.form['InputPhone'])
		if password1 == password2:
			sql = ''' INSERT INTO USERS (NAME,EMAIL_ID,PASSWORD,ADDRESS,PIN,PHONE) VALUES ('{}','{}','{}','{}','{}','{}'); '''.format(name,email_id,password1,address,pin,phone)
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
	if cname:
		sql = ''' SELECT * FROM PRODUCTS WHERE CNAME = '{}' '''.format(cname.upper())
		cursor.execute(sql)
		data = cursor.fetchall()
		return render_template('search.html',products=data)
	if query:
		sql = '''SELECT * FROM PRODUCTS WHERE PNAME LIKE '%{0}%' OR CNAME LIKE '%{0}%' OR SUB_CATEGORY LIKE '%{0}%' OR BRAND LIKE '%{0}%';'''.format(query.upper())
		cursor.execute(sql)
		dictcursor.execute(sql)
		results_dict = dictcursor.fetchall()
		brands = list(set([product.get('BRAND') for product in results_dict]))
		genders = list(set([product.get('GENDER') for product in results_dict]))
		category = list(set([product.get('CNAME') for product in results_dict]))
		sizes = list(set([product.get('SIZE') for product in results_dict]))
		return render_template('search.html',results_dict=results_dict,brands=brands,category=category,genders=genders,sizes=sizes)
	if request.method == 'POST':
		results_dict = eval(request.form.get('results_dict'))
		category = request.form.get('category')
		gender = request.form.get('gender')
		brands = request.form.getlist('brand')
		sizes = request.form.getlist('size')
		price_from,price_to = request.form.get('price_range').split(',')
		filtered_result = []
		for product in results_dict:
			if product.get('CNAME') == category and product.get('GENDER') == gender and product.get('BRAND') in brands and product.get('SIZE') in sizes and product.get('PRICE') in range(int(price_from),int(price_to)):
				filtered_result.append(product)
		brands = list(set([product.get('BRAND') for product in filtered_result]))
		genders = list(set([product.get('GENDER') for product in filtered_result]))
		category = list(set([product.get('CNAME') for product in filtered_result]))
		sizes = list(set([product.get('SIZE') for product in filtered_result]))
		return render_template('search.html',results_dict=filtered_result,brands=brands,category=category,genders=genders,sizes=sizes)
	return render_template('search.html',results_dict=None)


@app.route('/product',methods=['GET','POST'])
def product():
	return render_template('product.html')

if __name__ == '__main__':
   #app.run(debug=True,host='192.168.0.100')
   app.run(debug=True)
