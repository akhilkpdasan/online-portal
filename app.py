from flask import Flask, request, url_for, redirect, render_template, session, escape
import MySQLdb


app = Flask(__name__)
app.config['SECRET_KEY'] = "pefx86764asyuys23424rgwrhz2553462"
#app.config['SERVER_NAME'] = "192.168.0.100:5000"

# Open database connection
db = MySQLdb.connect(host="localhost", user="root", passwd="aslk", db="ecommerce")
cursor = db.cursor()

@app.route('/', methods = ['GET', 'POST'])
def home():
	if 'email_id' in session:      
		return render_template('home.html',email_id=escape(session['email_id']))
	return render_template('home.html',email_id='')


@app.route('/login' , methods=['GET','POST'])
def login():
	if request.method == 'POST':
		email_id = request.form['InputEmail'] 
		password = request.form['InputPassword']
		sql = '''SELECT password FROM USERS WHERE email_id = '{}';'''.format(email_id)
		cursor.execute(sql)
		session['username'] = email_id
		return redirect(url_for('home'))




@app.route('/register' , methods=['GET','POST'])
def register():
	if request.method == 'POST':
		email_id = request.form['InputEmail'] 
		password1 = request.form['InputPassword1']
		password2 = request.form['InputPassword2']
		if password1 == password2:
			sql = ''' INSERT INTO USERS (email_id,password) VALUES ('{}','{}'); '''.format(email_id,password1)
			print sql
			cursor.execute(sql)	    
			return redirect(url_for('home'))


@app.route('/logout')
def logout():
    session.pop('username', None)
    return redirect(url_for('home'))



if __name__ == '__main__':
   #app.run(debug=True,host='192.168.0.100')
   app.run(debug=True)
