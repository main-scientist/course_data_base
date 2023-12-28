from flask import Flask, render_template, request, redirect, url_for, session
from SQL import SQL

sql = SQL()

app = Flask(__name__)

@app.route('/')
def index():
    return render_template("auth.html")

@app.route('/menu', methods=['POST'])
def update_data():
    if 'auth_login' in request.form and 'auth_pass' in request.form:
        login = request.form["auth_login"]
        password = request.form["auth_pass"]
