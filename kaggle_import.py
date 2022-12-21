import csv
import decimal
import psycopg2

username = 'username'
password = 'password'
database = 'LR2'
host = 'localhost'
port = '5432'

inputFile1 = 'chocolate_makers.csv'

inputFile2 = 'chocolate_ratings.csv'

query_1 = '''create table manufacturers(
	manufacturer_name char(40) not null,
	manufacturer_city char(30) not null,
	manufacturer_state char(30) not null,
	manufacturer_owner char(100) not null,
	manufacturer_country char(20) not null,
	constraint pk_manufacturers primary key (manufacturer_name)
);'''

query_2 = '''create table bars_reviews(
	bar char(4) not null,
	date int not null,
	bar_taste char(150) not null,
	rating decimal(8,2) not null,
	beans char(100) not null,
	cocoapercentage char(10) not null,
	company char(50) not null,
	constraint pk_bars_reviews primary key (bar, date, beans, cocoapercentage, company)
);'''

query_3 = '''create table chocolate_bars(
	id char(5) not null,
	company char(50) not null,
	ingredients char(15) not null
);'''

query_4 = '''
insert into manufacturers (manufacturer_name, manufacturer_city, manufacturer_state, manufacturer_owner, manufacturer_country) values (%s, %s, %s, %s, %s)
'''

query_5 = 'insert into bars_reviews (bar, date, bar_taste, rating, beans, cocoapercentage, company) values (%s, %s, %s, %s, %s, %s, %s)'

query_6 = 'insert into chocolate_bars (id, company, ingredients) values (%s, %s, %s)'

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur = conn.cursor()
    cur.execute(query_1)
    cur.execute(query_2)
    cur.execute(query_3)
    with open(inputFile1, 'r') as inptf:
        reader = csv.DictReader(inptf)
        for idx, row in enumerate(reader):
            manufacturer_values = (row['COMPANY NAME'], row['CITY'], row['STATE/PROVINCE'], row['OWNER/MAKER'], row['COUNTRY'])
            cur.execute(query_4, manufacturer_values)
    with open(inputFile2, 'r') as inptf:
        reader = csv.DictReader(inptf)
        for idx, row in enumerate(reader):
            rating_values = (row['REF'], row['Review Date'], row['Most Memorable Characteristics'], row['Rating'], row['Specific Bean Origin or Bar Name'], row['Cocoa Percent'], row['Company (Manufacturer)'])
            bars_value = (row['REF'], row['Company (Manufacturer)'], row['Ingredients'])
            cur.execute(query_5, rating_values)
            cur.execute(query_6, bars_value)

    conn.commit()