import mysql.connector

config = {
    'user': 'root',
    'password': 'root',
    'host': 'localhost',
    'database': 'shop',
    'raise_on_warnings': True
}

class SQL:
    def __init__(self):
        self.connection = None
        self.connect_sql()
        self.user_id = None
        self.products = None

    def connect_sql(self):
        try:
            self.connection = mysql.connector.connect(**config)
            print('Подключение к MySQL базе данных успешно установлено!')

        except mysql.connector.Error as error:
            print('Ошибка подключения к MySQL базе данных: {}'.format(error))

    def auth(self, login: str, password: str):
        cursor = self.connection.cursor()
        query_admin = f"select * from shop.admins where login = '{login}' and password = '{password}';"
        query_user = f"select * from shop.customers where email = '{login}' and password = '{password}';"
        
        cursor.execute(query_admin)
   