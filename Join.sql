USE nyle;

SELECT * FROM exam;

SELECT name, CONCAT(subject_id , ", " , lecturer) AS subject_data, CONCAT(date , ", " , place) AS venue_date
FROM exam; 

DELETE FROM exam
WHERE id=4;

INSERT INTO exam (name, subject_id, date, place, lecturer)
VALUE ("OOP test 45s", 1, "2022-12-11", "AK234", 3), ("OOP test 48s", 1, "2022-12-09", "AK234", 3);

DELETE FROM exam
WHERE id=11;

------------ JOINS STARTS -------------

SELECT exam.name, exam.subject_id, subject.name, exam.date, exam.place, exam.lecturer, lecturer.name
FROM exam
INNER JOIN subject ON exam.subject_id=subject.id
INNER JOIN lecturer ON exam.lecturer=lecturer.id;

SELECT * 
FROM ( SELECT exam.name, exam.subject_id, subject.name AS subject_name, exam.date, exam.place, exam.lecturer, lecturer.name AS lecture_name
		FROM exam
		INNER JOIN subject ON exam.subject_id=subject.id
		INNER JOIN lecturer ON exam.lecturer=lecturer.id
) AS new_t
WHERE subject_name="Java";

SELECT exam.name, exam.subject_id, subject.name, exam.date, exam.place, exam.lecturer, lecturer.name
FROM exam
LEFT JOIN subject ON exam.subject_id=subject.id
LEFT JOIN lecturer ON exam.lecturer=lecturer.id;

SELECT exam.name, exam.subject_id, subject.name, exam.date, exam.place, lecturer.id, lecturer.name
FROM exam
LEFT JOIN subject ON exam.subject_id=subject.id
RIGHT JOIN lecturer ON exam.lecturer=lecturer.id;

SELECT exam.name, subject.id, subject.name, lecturer.id, lecturer.name, exam.date, exam.place
FROM exam
FULL OUTER JOIN subject ON exam.subject_id=subject.id
FULL OUTER JOIN lecturer ON exam.lecturer=lecturer.id;

SELECT  exam.name, subject.id, subject.name AS subject_name, lecturer.id, lecturer.name AS lecturer_name, exam.date, exam.place
FROM exam
INNER JOIN subject ON exam.subject_id=subject.id
INNER JOIN lecturer ON exam.lecturer=lecturer.id
WHERE lecturer.name LIKE "%er%";

SELECT * 
FROM (	SELECT  exam.name, subject.id AS subject_id, subject.name AS subject_name, lecturer.id AS lecture_id, lecturer.name AS lecturer_name, exam.date, exam.place
		FROM exam
		INNER JOIN subject ON exam.subject_id=subject.id
		INNER JOIN lecturer ON exam.lecturer=lecturer.id
		WHERE lecturer.name LIKE "%er%"
) AS new_t
ORDER BY lecturer_name ASC;




