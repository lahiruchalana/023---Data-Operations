USE nyle;

SELECT * FROM exam
WHERE name LIKE "%O%";

SELECT * FROm exam
WHERE name LIKE "%s";

SELECT * FROM exam;

SELECT * FROM exam
WHERE name LIKE "_ast%";

SELECT * FROM exam
WHERE name LIKE "__st%";

SELECT * FROM exam
WHERE name LIKE "_e_t%";

------------ IN -------------

SELECT * FROM exam
WHERE name IN ("past test");

SELECT * FROM exam
WHERE name IN ("past test", "Nest exam", "Agile test");