create table Genre(
	id serial primary key,
	name varchar(50) not null
);

create table Artist(
	id serial primary key,
	name varchar(50) not null,
	genre_id integer references Genre(id) not null
);

create table Album(
	id serial primary key,
	name varchar(50) not null,
	year date not null,
	artist_id integer references Artist(id) not null
);

create table Track(
	id serial primary key,
	name varchar(50) not null,
	duration time not null,
	album_id integer references Album(id) not null
);