USE nyle;

SELECT * FROM exam;

SELECT DISTINCT name FROM exam;

SELECT DISTINCT lecturer FROM exam 
WHERE lecturer IS NOT NULL;

SELECT COUNT(name) AS number_of_exams_or_tests
FROM exam;

SELECT COUNT(*) AS number_of_exams_or_tests
FROM (SELECT DISTINCT name FROM exam) AS name_new;

SELECT COUNT(*) AS number_of_lecturers_worked_on_exams
FROM (SELECT DISTINCT lecturer FROM exam) AS new_table;

SELECT COUNT(*) AS number_of_lecturers_worked_on_exams
FROM (SELECT DISTINCT lecturer 
	FROM exam
    WHERE lecturer IS NOT NULL
) AS new_table;

SELECT SUM(lecturer) AS sum_of_lecturer_ids
FROM exam
WHERE lecturer IS NOT NULL;

SELECT AVG(lecturer) AS avg_of_lecturer_ids
FROM exam
WHERE lecturer IS NOT NULL;