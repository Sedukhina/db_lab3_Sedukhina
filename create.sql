--Review table 
create table Reviews(
	bar_id char(4) not null,
	review_date int not null,
	taste char(150) not null,
	rating decimal(8,2) not null,
	beans_batch char(50) not null
);

--Beans table 
create table Beans(
	beans_batch char(50) not null,
	beans_country char(20) not null
);

--Bar table 
create table Bars(
	bar_id char(4) not null,
	company_name char(20) not null,
	bar_cocoapercentage int not null,
	bar_ingredients char(15) not null
);

--Company table 
create table Companies(
	company_name char(20) not null,
	company_city char(30) not null,
	company_state char(20) not null,
	company_owner char(100) not null,
	company_country char(20) not null
);

--Primary keys
alter table Reviews add constraint pk_reviews primary key (bar_id, review_date, beans_batch);
alter table Beans add constraint pk_beans primary key (beans_batch);
alter table Bars add constraint pk_bars primary key (bar_id);
alter table Companies add constraint pk_companies primary key (company_name);

--Foreign keys
alter table bars add constraint fk_bars_companies foreign key (company_name) references companies(company_name);
alter table reviews add constraint fk_reviews_bars foreign key (bar_id) references bars(bar_id);
alter table reviews add constraint fk_reviews_beans foreign key (beans_batch) references beans(beans_batch);