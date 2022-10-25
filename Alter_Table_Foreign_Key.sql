USE nyle;

CREATE TABLE exam (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE subject (
	id INT NOT NULL AUTO_INCREMENT, 
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

SELECT * FROM exam;

ALTER TABLE exam
ADD COLUMN (subject_id INT NOT NULL);

ALTER TABLE exam 
ADD CONSTRAINT fk_subject
FOREIGN KEY (subject_id) REFERENCES subject(id);

INSERT INTO exam (name, subject_id)
VALUE ("OOP exam", 1);

INSERT INTO subject (name)
VALUE ("Java");

SELECT * FROM subject;

SELECT * FROM exam;

INSERT INTO subject (name)
VALUE ("C#"), ("C++");

INSERT INTO exam (name, subject_id)
VALUE ("DSA exam", 2);

