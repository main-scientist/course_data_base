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
        if sql.auth(login, password):
            data = sql.select_sql("products")
            return render_template('index.html', data=data)
        else:
            return render_template('faild.html')
    
    elif 'new_user_checkbox' in request.form and request.form.get('new_user_checkbox') == 'on':
        name = request.form["new_user_name"]
        surname = request.form["new_user_surname"]
        email = request.form["new_user_email"]
        password = request.form["new_user_password"]
        sql.set_auth(name, surname, email, password)
        if sql.auth(login, password):
            data = sql.select_sql("products")
            return render_template('index.html', data=data)
        

# @app.route('/add_to_cart/<item_id>')
# def add_to_cart(item_id):
#     item = get_item_by_id(item_id)
#     if item:
#         if 'cart' not in session:
#             session['cart'] = []
#         session['cart'].append(item)
#     # return redirect(url_for('index'))
#     return redirect(url_for('update_data'))


# @app.route('/clear_cart')
# def clear_cart():
#     session.pop('cart', None)
#     return redirect(url_for('index'))


# def get_item_by_id(item_id):
#     items = sql.products
#     print(items)
#     for item in items:
#         if item[0] == item_id:
#             return item
#     return None

# def get_cart():
#     return session.get('cart', [])
    





if __name__ == '__main__':
    app.run(debug=True)
