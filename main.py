from fileinput import close
from flask import Flask, render_template,request,redirect,url_for
import mysql.connector
import random
import string

db=mysql.connector.connect(
    host='localhost',
    password='',
    user='root',
    database='dataurl',
    port=3306
)
db.autocommit=True

app= Flask(__name__)

@app.get("/")
def index():
    
    cursor=db.cursor(dictionary=True)
    cursor.execute('select * from enlaces')
    #cursor.execute('select id from enlaces')
    #cursor.execute('select exten from enlaces')
    #cursor.execute('select cort from enlaces')
    
    productos=cursor.fetchall()
    
    cursor=close()
    return render_template("index.html",productos=productos)


@app.post("/")
def crearUrlPost():
    exten_url=request.form.get('exten')
    cursor=db.cursor()
    
    cursor.execute("insert into enlaces(exten,cort) values(%s,%s) ",(exten_url,url_corto()))
    
    cursor.close()
    return redirect(url_for('index'))

def url_corto():
    visual='hola mundo'
    return visual
app.run(debug=True)