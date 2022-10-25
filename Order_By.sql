USE nyle;

SELECT * FROM task 
ORDER BY name;

SELECT * FROM task
ORDER BY complation_date;

SELECT * FROM task
ORDER BY complation_date DESC;

SELECT * FROM task
ORDER BY name, complation_date;

SELECT * FROM task 
ORDER BY name DESC, complation_date ASC;

---- NULL -----

SELECT * FROM task
WHERE name IS NOT NULL;

SELECT * FROM task
WHERE name IS NULL;