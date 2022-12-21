import psycopg2
import matplotlib.pyplot as plt

username = 'username'
password = 'password'
database = 'LR2'
host = 'localhost'
port = '5432'

view_1 = 'create view BarsAmount as select trim(company_name), count(bar_id) from bars group by company_name;'

view_2 = 'create view CompaniesCountries as select company_country, count(company_name) from companies group by company_country;'

view_3 = 'create view MarksFrequency as select rating, count(rating) from reviews group by rating;'

query_1 = 'select * from BarsAmount'

query_2 = 'select * from CompaniesCountries'

query_3 = 'select * from MarksFrequency'

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

figure, (bar1_ax, pie_ax, bar2_ax) = plt.subplots(1, 3)

with conn:
    cur = conn.cursor()

    cur.execute(view_1)
    cur.execute(view_2)
    cur.execute(view_3)

    cur.execute(query_1)
    manufacturers = []
    barsAmount = []

    for row in cur:
        manufacturers.append(row[0])
        barsAmount.append(row[1])

    x_range = range(len(manufacturers))

    bar1_ax.bar(x_range, barsAmount, label='Total')
    bar1_ax.set_xlabel('Виробник')
    bar1_ax.set_ylabel('Кількість плиток')
    bar2_ax.set_title('Кількість видів плиток у кожного виробника')
    bar1_ax.set_xticks(x_range)
    bar1_ax.set_xticklabels(manufacturers)

    cur.execute(query_2)
    countries = []
    count = []
    for row in cur:
        countries.append(row[0])
        count.append(row[1])
    pie_ax.pie(count, labels=countries, autopct='%1.1f%%')
    pie_ax.set_title('Частка плиток по країнах')

    cur.execute(query_3)
    rating = []
    amount = []

    for row in cur:
        rating.append(row[0])
        amount.append(row[1])

    x_range = range(len(rating))

    bar2_ax.bar(x_range, amount, label='Total')
    bar2_ax.set_xlabel('Оцінка')
    bar2_ax.set_ylabel('Кількість')
    bar2_ax.set_title('Кількість кожної з оцінок')
    bar2_ax.set_xticks(x_range)
    bar2_ax.set_xticklabels(rating)

    mng = plt.get_current_fig_manager()
    mng.resize(1400, 600)

    plt.show()