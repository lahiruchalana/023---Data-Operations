USE nyle;


SELECT * FROM exam
WHERE subject_id=5
LIMIT 3;

SELECT * FROm exam
WHERE subject_id=1
LIMIT 2;

SELECT MIN(date) AS oldest_date
FROM exam;

SELECT * FROM exam;

SELECT MAX(date) AS recent_date
FROM exam;

SELECT MIN(date) AS first_past_test_date
FROM exam
WHERE name="Past Test";

SELECT MAX(date) AS last_test_date
FROM exam
WHERE name LIKE "%test%";

SELECT MIN(date) AS first_exam_date
FROM exam
WHERE name LIKE "%exam%" AND date IS NOT NULL;

