use training_record;

select * from price_list;
select ceil(price) from price_list;

insert into price_list (id,name,price,category) values (6,'mobile',70000,'electronics'),(7,'laptop',70000,'electronics'),(8,'t-shirt',700,'outfit'),(9,'shirt',1000,'outfit');

select count(*) from price_list;
select sum(price) from price_list;
select avg(price) as average_price from price_list;
select min(price) as min_price from price_list;
select max(price) as max_price from price_list;

select avg(price) from price_list where category='fruit';
select category, avg(price) from price_list group by category;


select * from price_list
where price>(select avg(price) as average_price from price_list);

select * from actor_list;
select * from latest_actor_movie;

select actorId from latest_actor_movie;

select * from actor_list where id in (select actorId from latest_actor_movie);


create table mark_list(
id int auto_increment primary key,
mark int not null,
studId int,
foreign key (studId) references student_list(id)
);

insert into student_list(name) values ('Kohli'),('Dhoni'),('Yuvraj'),('Sachein'),('S.Smith');

insert into mark_list(mark,studId) values (99,1),(90,2),(92,3),(100,4),(97,5);

select * from mark_list;



select * from price_list where price in (200.5646,60.666777888,20.789606,553);
