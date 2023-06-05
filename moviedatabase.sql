-- create database movie_database
-- use movie_database

-- TABLE MOVIE

create table Movie (
movie_id int ,
movie_title varchar(200),
movie_director varchar(70),
movie_released date,
primary key(movie_id)
)

-- Genre TABLE

create table genre(
genre_id int,
genre varchar(30),
primary key(genre_id)
)

-- Media Table

create table media(
media_id int PRIMARY KEY,
media_url varchar(234),
media_type varchar(200),
foreign key (media_id) references movie(movie_id)
)

-- user table

create table user(
user_id int primary key,
user_name varchar(50)
)

-- Review Table

create table review(
review_id int,
review varchar(400),
ratings float,
review_date date,
user_id int,
foreign key (review_id) references movie(movie_id),
foreign key (user_id) references user(user_id)
)

-- artist table

create table artist(
artist_id int primary key,
artist_name varchar(50)
)

-- skills table

create table skills(
skills_id int primary key,
skill varchar(100)
)

-- artist skills table

create table artist_skills(
artist_id int,
skills_id int,
primary key(artist_id,skills_id),
foreign key(artist_id) references artist(artist_id),
foreign key(skills_id) references skills(skills_id)
)

-- role table

create table role(
role_id int primary key,
role_name varchar(40)
)

-- artist role

create table artist_role(
artist_id int ,
role_id int,
movie_id int,
foreign key (role_id) references role(role_id), 
foreign key (artist_id) references artist(artist_id),
foreign key (movie_id) references movie(movie_id)
)
