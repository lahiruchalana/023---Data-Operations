USE nyle;

SELECT * FROM task;

INSERT INTO task (name, complation_date)
VALUES ("Assignment of OOP 02", '2022-11-12');

INSERT INTO task (name, complation_date)
VALUES ("Maths class", "2022-11-04"), ("Science class", "2022-11-08"), ("Python class", "2022-11-03");

SELECT * FROM task;

SELECT name FROM task;

SELECT name, complation_date FROM task;

SELECT id, name, complation_date FROM task;