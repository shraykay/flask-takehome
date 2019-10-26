import os

user = os.environ['POSTGRES_USER']
pw = os.environ['POSTGRES_PASS']
host = os.environ['POSTGRES_HOST']
db = os.environ['POSTGRES_DB']
db_port = os.environ['POSTGRES_PORT']
port = os.environ['APP_PORT']

DATABASE_CONNECTION_URI = f'postgres://{user}:{pw}@{host}:{db_port}/{db}'