import csv
import psycopg2

username = 'username'
password = 'password'
database = 'LR2'
host = 'localhost'
port = '5432'

OUTPUT_FILE_T = 'Sedukhina_DB.csv'

TABLES = [
    'Reviews',
    'Beans',
    'Bars',
    'Companies'
]

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur = conn.cursor()

    for table_name in TABLES:
        cur.execute('SELECT * FROM ' + table_name)
        fields = [x[0] for x in cur.description]
        with open(OUTPUT_FILE_T.format(table_name), 'w') as outfile:
            writer = csv.writer(outfile)
            writer.writerow(fields)
            for row in cur:
                writer.writerow([str(x) for x in row])