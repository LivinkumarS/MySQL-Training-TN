USE training_record;

SELECT * FROM actor_list;

INSERT INTO actor_list (id,name,age) VALUES (8,"Vijay Devarkonda",33),(9,'Neslan',27);

SELECT name,age FROM actor_list WHERE age!=52;

SELECT name,age FROM actor_list WHERE age BETWEEN 50 AND 70;

SELECT name,age FROM actor_list WHERE age IN (58);

SELECT name,age FROM actor_list WHERE name LIKE '% %';

SELECT * FROM actor_list WHERE id>5 OR age>=50;

SELECT * FROM actor_list WHERE NOT id>5;

UPDATE actor_list SET age=36 WHERE id=8;

SELECT * FROM actor_list ORDER BY age ASC;

SELECT * FROM actor_list LIMIt 5;

SELECT name FROM actor_list WHERE age>40 AND name LIKE '%y%' ORDER BY name DESC LIMIT 3;