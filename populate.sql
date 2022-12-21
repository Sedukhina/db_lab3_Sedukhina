--Beans table 
insert into Beans(beans_batch, beans_country)
values('Hispaniola', 'Dominican Republic');
insert into Beans(beans_batch, beans_country)
values('Conacado', 'Dominican Republic');
insert into Beans(beans_batch, beans_country)
values('Africa', 'Ghana');
insert into Beans(beans_batch, beans_country)
values('Papua New Guinea', 'Papua New Guinea');
insert into Beans(beans_batch, beans_country)
values('Madagascar', 'Madagascar');
insert into Beans(beans_batch, beans_country)
values('Jamaica, #206, DR, LC', 'Jamaica');
insert into Beans(beans_batch, beans_country)
values('Jamaica, #205, DR, MC', 'Jamaica');
insert into Beans(beans_batch, beans_country)
values('Camino Verde P., Balao, Guayas, 2013', 'Ecuador');
insert into Beans(beans_batch, beans_country)
values('San Francisco de Macoris, Cibao region', 'Dominican Republic');
insert into Beans(beans_batch, beans_country)
values('Maya Mtn., Break Bar- Snark', 'Belize');
insert into Beans(beans_batch, beans_country)
values('Peru, Ecuador, Venezuela', 'Blend');

--Company table
insert into Companies(company_name, company_city, company_state, company_owner, company_country)
values('Soma', 'Toronto', 'Ontario', 'David and Cynthia Castelan', 'Canada');
insert into Companies(company_name, company_city, company_state, company_owner, company_country)
values('Fresco', 'Lynden', 'Washington', 'Rob Anderson', 'US');
insert into Companies(company_name, company_city, company_state, company_owner, company_country)
values('Choklat', 'Calgary', 'Alberta', 'Brad Churchill', 'Canada');
insert into Companies(company_name, company_city, company_state, company_owner, company_country)
values('Dandelion', 'San Francisco', 'California', 'Todd Masonis, Cameron Ring', 'US');
insert into Companies(company_name, company_city, company_state, company_owner, company_country)
values('LAmourette', 'San Francisco', 'California', 'Andre V. Lamourette', 'US');

--Bar table 
insert into Bars(bar_id, company_name, bar_cocoapercentage, bar_ingredients)
values('377', 'Soma', 70, '3- B,S,C');
insert into Bars(bar_id, company_name, bar_cocoapercentage, bar_ingredients)
values('387', 'Soma', 70, '3- B,S,C');
insert into Bars(bar_id, company_name, bar_cocoapercentage, bar_ingredients)
values('370', 'Fresco', 70, '3- B,S,C');
insert into Bars(bar_id, company_name, bar_cocoapercentage, bar_ingredients)
values('1295', 'Dandelion', 70, '2- B,S');
insert into Bars(bar_id, company_name, bar_cocoapercentage, bar_ingredients)
values('1387', 'Dandelion', 70, '2- B,S');
insert into Bars(bar_id, company_name, bar_cocoapercentage, bar_ingredients)
values('1446', 'Dandelion', 70, '2- B,S');
insert into Bars(bar_id, company_name, bar_cocoapercentage, bar_ingredients)
values('853', 'LAmourette', 72, '5- B,S,C,V,L');

--Review table 
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('377', 2009, 'sticky, few grits, mild fruit, sour', 3.0, 'Hispaniola');
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('387', 2009, 'slow to develop, nutty', 3.0, 'Conacado');
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('377', 2009, 'earthy, woody, vegetal', 3.5, 'Africa');
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('387', 2009, 'smokey, mushroom, woodsy', 3.5, 'Papua New Guinea');
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('387', 2009, 'subtle red berry, complex', 3.75, 'Madagascar');
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('370', 2009, 'creamy, simple, nutty', 3.0, 'Jamaica, #206, DR, LC');
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('370', 2009, 'creamy, roasty, tobacco', 3.25, 'Jamaica, #205, DR, MC');
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('1295', 2014, 'gummy, nutty, bourbon', 3.5, 'Camino Verde P., Balao, Guayas, 2013');
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('1387', 2014, 'cherry, rich choco', 3.75, 'San Francisco de Macoris, Cibao region');
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('1446', 2015, 'intense, roasty, coffee, raisin', 3.0, 'Maya Mtn., Break Bar- Snark');
insert into Reviews(bar_id, review_date, taste, rating, beans_batch)
values('853', 2012, 'fatty, nutty, woody', 3.0, 'Peru, Ecuador, Venezuela');
