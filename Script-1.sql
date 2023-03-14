use library;

create table Libraries(
	id_library int primary key,
	amount_of_book int not null,
	amount_authors int not null,
	amount_rows int not null
);

create table author(
	id_author int primary key,
	id_library int not null,
	full_name varchar(150) not null,
	amount_books int not null,
	foreign key (id_library) references Libraries(id_library)
);

create table book(
	id int primary key,
	name_of_book varchar(100) not null,
	id_author int not null,
	genre varchar(50) not null,
	foreign key (id_author) references author(id_author),
	foreign key (genre) references genres(genre)
);

create table genres (
	genre varchar(50) primary key,
	№_row int not null
);

create table reader (
	id int primary key,
	name varchar(100) not null,
	id_book int not null,
	date_take_book date,
	isReturn boolean default(0),
	foreign key (id_book) references book(id)
);
