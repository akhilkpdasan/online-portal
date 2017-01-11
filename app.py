from flask import Flask, request, flash, url_for, redirect, render_template, session, g

app = Flask(__name__)
app.config['SECRET_KEY'] = "pefx86764asyuys23424rgwrhz2553462"
#app.config['SERVER_NAME'] = "192.168.0.100:5000"


@app.route('/', methods = ['GET', 'POST'])
def home():
    return render_template('home.html')






if __name__ == '__main__':
   #app.run(debug=True,host='192.168.0.100')
   app.run(debug=True)
