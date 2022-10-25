USE nyle;

SELECT * FROM exam;

SELECT * FROM exam
WHERE lecturer BETWEEN 1 AND 3;

SELECT * FROM exam 
WHERE subject_id BETWEEN 1 AND 5;

SELECT * FROM exam
WHERE lecturer BETWEEN 1 AND 3
ORDER BY date DESC;

SELECT * FROM exam 
WHERE subject_id NOT BETWEEN 1 AND 2
ORDER BY lecturer, date DESC;

SELECT * FROM exam
WHERE name BETWEEN "DSA exam" AND "Nest exam";

SELECT * FROM exam
WHERE date BETWEEN "2020-01-01" AND "2022-12-10"
ORDER BY date;