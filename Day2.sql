Use training_record;

CREATE TABLE actor_list(
id INT primary key,
name VARCHAR(50),
age INT
);

describe actor_list;

INSERT INTO actor_list (id,name,age) VALUES (1,'Vijay',52),(2,'Kamal',72),(3,'Rajini',72);

SELECT * FROM actor_list WHERE age>60;

UPDATE actor_list SET age=70, name='kamal hassan' WHERE id=2;

DELETE FROM actor_list WHERE id=3;