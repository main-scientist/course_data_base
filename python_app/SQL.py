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

    def connect_sql(self):
        try:
            self.connection = mysql.connector.connect(**config)
            print('Подключение к MySQL базе данных успешно установлено!')

        except mysql.connector.Error as error:
            print('Ошибка подключения к MySQL базе данных: {}'.format(error))

    def select_sql(self, table_name: str):
        cursor = self.connection.cursor()
        query = f'SELECT * FROM {table_name};'
        cursor.execute(query)
        data = cursor.fetchall()
        print(data)
        cursor.close()
        self.disconnect()

    def disconnect(self):
        self.connection.close()
        print('Соединение с базой данных закрыто.')
