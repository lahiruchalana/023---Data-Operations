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

