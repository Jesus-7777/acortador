""" instalar el cli de heroku
-despues iniciamos sesion en heroku visual

heroku login
login=coreo
password=Heroku-1

-credenciales de base de datos con heroku

    host='academia.c1mebdhdxytu.us-east-1.rds.amazonaws.com',
    password='ALrUBIaLYcHR',
    user='p8',
    database='p8',
    port=3306

-crear la instancia donde se va a crear flask(servidor)

heroku create (nombre)

-montamos nuestro proyecto en el entorno de heroku

heroku git:remote -a flask-acorta

-dentro de Procfilr
    web: gunicorn main:app

-comando para guardar cambios en el entorno de heroku
    
    git add -A
    git commit -m "comentario"
    git push heroku main

"""