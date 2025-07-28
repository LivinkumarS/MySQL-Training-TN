use training_record;
select * from actor_list;

select ROUND(age,2) from actor_list;

CREATE TABLE price_list(
id int primary key,
name varchar(50),
price double
);

INSERT INTO price_list (id, name, price) VALUES (1,'rice',55.434567),(2,'tomato','20.7896060'),(3,'carrot',60.666777888),(4,'coconut oil',530.6754),(5,'dal',200.5646);

select name, MOD(price,10) as amount from price_list;

select FLOOR(45.9999) ;
select CEIL(45.01) as ceiled;
select MOD(3,4) as reminder;
select POWER(20,0) as value;

select CONCAT('The Product Name is ',name) as 
product_name, price as amount from price_list;


select length('Pandiya');
select UPPER('Pandiya');
select LOWER('Pandiya');

select SUBSTRING('Pandiya',2,4);
select TRIM('   pandiya  ');

select now();
select curdate();
select curtime();
select datediff(curdate(),'2025-07-20');


SELECT CONCAT('His name is ', upper(name), ' and he is ', age, ' years old') AS actor_details
FROM actor_list;


Select CONCAT('His name is',upper(name)), CONCAT('he is',age,'year old' ) from actor_list;
