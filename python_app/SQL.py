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
        data_admin = cursor.fetchall()
        
        cursor.execute(query_user)
        data_user = cursor.fetchall()
        
        cursor.close()
        if len(data_admin) > 0 or len(data_user):
            self.get_user_id(data_admin, data_user)
            return True
        else: 
            return False

    def get_user_id(self, data_admin, data_user):
        if len(data_admin) > 0:
            self.user_id = data_admin[0][0]
        else:
            self.user_id = data_user[0][0]

    
    def set_auth(self, name, surname, password, email):
        cursor = self.connection.cursor()
        query = f"INSERT INTO shop.customers (name, surname, password, email) VALUES ('{name}', '{surname}', '{password}', '{email}')"
        try:
            cursor.execute(query)
            self.connection.commit()
            print("Query Done")
        except Exception as e:
            print(f"Query not done. Error: {e}")
        finally:
            cursor.close()
        
    def set_product_to_bucket(self, user_id, product_id):
        cursor = self.connection.cursor()
        query = f"insert into shop.bucket(id_customer, id_product) values('{user_id}', '{product_id}');"
        try:
            cursor.execute(query)
            print("query Done")
        except:
            print("query not done")
            
    def select_sql(self, table_name: str):
        cursor = self.connection.cursor()
        query = f'SELECT * FROM shop.{table_name};'
        cursor.execute(query)
        data = cursor.fetchall()
        cursor.close()
        self.products = data
        return data

    def disconnect(self):
        self.connection.close()
        print('Соединение с базой данных закрыто.')
