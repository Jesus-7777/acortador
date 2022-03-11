from fileinput import close
from flask import Flask, flash, render_template,request,redirect,url_for
import mysql.connector
import random
import string

db=mysql.connector.connect(
    host='academia.c1mebdhdxytu.us-east-1.rds.amazonaws.com',
    password='ALrUBIaLYcHR',
    user='p8',
    database='p8',
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

def url_corto():
    letters = string.ascii_lowercase + string.ascii_uppercase
    while True:
        rand_letters = random.choices(letters, k=4)
        rand_letters = "".join(rand_letters)
        return rand_letters

@app.route("/crear",methods=["GET","POST"])
def crearUrlPost():
    cursor=db.cursor()
    if request.method=='POST':
        exten_url=request.form.get('exten')
        corto=url_corto()
        cursor.execute("insert into enlaces(exten,cort) values(%s,%s) ",(exten_url,corto))
        #cursor.execute("insert into enlaces(exten) values('%s')"%exten_url)

        cursor.close()
        
    return render_template("ventanas/crear.html",corto=corto)
    #return render_template("index.html",corto=corto)

@app.get('/short/<urlId>')
def traerUrl(urlId):
    cursor=db.cursor()
    cursor.execute("SELECT exten FROM enlaces WHERE cort=%(cort)s",{'cort':urlId})
    productos=cursor.fetchone()
    cursor.close()
    return redirect(productos[0])
    #return render_template("index.html", contactoId = productos[0])
    #return render_template(redirect('index', contactoId = productos[0]))

app.run(debug=True)