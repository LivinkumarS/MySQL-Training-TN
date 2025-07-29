USE training_record;

CREATE TABLE actress_list(
id int primary key auto_increment,
name varchar(50) not null unique,
email varchar(100) not null unique,
isActive enum('active','inactive') default 'active'
);

DESCRIBE actress_list;

ALTER TABLE actress_list MODIFY isActive enum('active','inactive') default 'active' NOT NULL;


INSERT INTO actress_list (name,email,isActive) VALUE ('Pooja','poo@gmail.com','inactive');

SELECT * FROM latest_movie;

CREATE TABLE latest_movie(
id int primary key auto_increment,
movie_name varchar(50) not null unique,
actorId int not null,
foreign key (actorId) references actress_list(id)
);

INSERT INTO latest_movie (movie_name,actorId) VALUES ('Thug life',1),('Kushi',2),('Jailer',3),('Coolie',5);

select * from price_list;

ALTER TABLE price_list ADD category VARCHAR(50);

SET sql_safe_updates=0;

UPDATE price_list SET category="fruit";

select * from actor_list;

CREATE TABLE latest_actor_movie(
id int auto_increment primary key,
movie varchar(50) not null,
actorId int not null
);

ALTER TABLE latest_actor_movie ADD constraint foreign key (actorID) references actor_list(id);

describe latest_actor_movie;

