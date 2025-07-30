use training_record;

select * from actor_list;
select * from latest_actor_movie;
select * from first_actor_movie;

describe latest_actor_movie;
describe actor_list;

select concat('His name is ',upper(a.name),'. His First movie is ',upper(f.movie),'. The latest movie is ',upper(l.movie),'.') as Details  from actor_list a 
inner join first_actor_movie f on a.id=f.actorId 
inner join latest_actor_movie l on a.id=l.actorId;


INSERT INTO latest_actor_movie (movie,actorId) VALUE ('VDS',10);

select a.name,l.movie from actor_list a inner join 
latest_actor_movie l on l.actorId=a.id;


select a.name,l.movie from actor_list a LEFT join 
latest_actor_movie l on l.actorId=a.id;

select a.name,l.movie from actor_list a RIGHT join 
latest_actor_movie l on l.actorId=a.id;

CREATE TABLE first_actor_movie(
id int primary key,
movie varchar(50) not null,
actorId int not null,
foreign key (actorId) references actor_list(id)
);

INSERT INTO first_actor_movie (id,movie,actorID) VALUES (1,'Naalaiya Theerppu',1),(2,'Kalathur Kannamma',2),(3,'Thulluvatho ilamai',5);

SELECT CONCAT('His name is ', UPPER(a.name),'. His First movie is ', UPPER(f.movie),'. The latest movie is ', UPPER(l.movie)) AS Actor_Details FROM actor_list a 
INNER JOIN first_actor_movie f ON a.id = f.actorID
INNER JOIN latest_actor_movie l ON a.id = l.actorID;

SELECT 
    CONCAT(
        'His name is ', a.name, 
        ', his latest movie ', l.movie, 
        ', and his first movie ', f.movie
    ) AS details 
FROM 
    actor_list a
inner JOIN 
    latest_actor_movie l ON a.id = l.actorId
inner JOIN 
    first_actor_movie f ON a.id = f.actorId;
