USE nyle;

SELECT * FROM exam;

SELECT exam.name, exam.subject_id, subject.name
FROM exam
INNER JOIN subject ON subject.id=exam.subject_id;

SELECT exam.name, exam.subject_id, subject.name
FROM exam
INNER JOIN subject ON exam.subject_id=subject.id
WHERE subject.name LIKE "Java";

SELECT COUNT(exam.name) AS number_of_exams, subject.name
FROM exam
INNER JOIN subject ON subject.id=exam.subject_id
GROUP BY subject.name;

SELECT exam.name, lecturer.name
FROM exam
LEFT JOIN lecturer ON lecturer.id=exam.lecturer;

SELECT COUNT(exam.name), lecturer.name
FROM exam
LEFT JOIN lecturer ON lecturer.id=exam.lecturer
GROUP BY lecturer.name;

SELECT exam.name, lecturer.name
FROM exam
RIGHT JOIN lecturer ON lecturer.id=exam.lecturer;

SELECT COUNT(exam.name) AS number_of_exams, lecturer.name
FROM exam
RIGHT JOIN lecturer ON lecturer.id=exam.lecturer
GROUP BY lecturer.name
ORDER BY number_of_exams ASC;