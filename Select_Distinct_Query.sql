USE nyle;

SELECT name FROM task;

SELECT DISTINCT name FROM task;

SELECT COUNT(DISTINCT name) FROM task;

SELECT COUNT(DISTINCT name) AS count_of_name FROM task;

SELECT COUNT(*) AS count FROM(SELECT DISTINCT name FROM task); (not working, why?)

SELECT COUNT(*) AS count_of_name FROM (SELECT DISTINCT name FROM task); (not working, why?)