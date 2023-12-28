from flask import Flask, render_template, request
from SQL import SQL

app = Flask(__name__)

@app.route('/')
def index():
    sql = SQL()
    data = sql.select_sql("products")
    # print(type(data))
    # print(data[0])
    # print(data[0][1])
    # for i in data:
    #     for j in i:
    #         print(j[1])
    return render_template('index.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)
