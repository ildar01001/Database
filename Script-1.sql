drop database if exists `goods`;
create database if not exists `goods`;

use `goods`;

create table fabricator (
	id_fabricator int primary key,
	name varchar(45) not null,
	country varchar(45) not null,
	site varchar(45) 
);

create table seller (
	id_seller int primary key,
	name varchar(45) not null,
	adress varchar(45) not null,
	phone_number int not null,
	site varchar(45) not null
);

create table model (
	id_model int primary key,
	name varchar(45) not null,
	id_fabricator int not null
);

create table good (
	id_good int primary key,
	name varchar(45)
);


create table price_list (
	id int primary key,
	id_seller int not null,
	id_fabricator int not null,
	id_good int not null,
	id_model int not null,
	price int not null,
	foreign key (id_seller) references seller(id_seller) ON UPDATE CASCADE ON DELETE cascade,
	foreign key (id_fabricator) references fabricator(id_fabricator) ON UPDATE CASCADE ON DELETE CASCADE,
	foreign key (id_model) references model(id_model) ON UPDATE CASCADE ON DELETE CASCADE,
	foreign key (id_good) references good(id_good) ON UPDATE CASCADE ON DELETE CASCADE
);


alter table `model` add constraint fk_fabricator 
	foreign key (id_fabricator) references fabricator(id_fabricator)
	ON UPDATE CASCADE ON DELETE CASCADE;

    
