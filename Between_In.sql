use nyle;

SELECT * 
FROM task;

SELECT *
FROM task
WHERE name IN ("Assignment of OOP", "Science class");

SELECT * FROM lecturer;

SELECT * FROM exam;

SELECT * FROM exam 
WHERE subject_id IN (1, 6);

SELECT * FROM exam 
WHERE name IN ("OOP EXAM", "past test");

SELECT * FROM exam 
WHERE subject_id BETWEEN 1 AND 5;

SELECT * FROM exam
WHERE name BETWEEN "OOP exam" AND "Past test";