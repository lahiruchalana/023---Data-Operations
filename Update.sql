USE nyle;

SELECT * FROM task;

UPDATE task
SET complation_date="2022-11-08"
WHERE id=2;

ALTER TABLE exam 
ADD COLUMN (date DATE NOT NULL,
			place VARCHAR(255),
            lecturer INT 
);

SELECT * FROM exam;

INSERT INTO subject (name)
VALUE ("Python"), ("React.JS"), ("Node.JS"), ("Spring Boot"), (".NET");

SELECT * FROM subject;

CREATE TABLE lecturer(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO lecturer (name)
VALUE ("Chris"), ("Lukheshenkow"), ("Pereires"), ("Jonathan"), ("Stoints"), ("Hamphysher");

SELECT * FROM lecturer;

ALTER TABLE exam
ADD CONSTRAINT fk_lecturer
FOREIGN KEY (lecturer) REFERENCES lecturer(id);

INSERT INTO exam (name, subject_id, date, place, lecturer)
VALUE ("OOP test 34s", 1, "2022-11-27", "AK234", 3);

SELECT * FROM exam;

INSERT INTO exam (name, subject_id, date, place, lecturer)
VALUE ("Past Test", 5, "2022-12-07", "4HT4", 6);

INSERT INTO exam (name, subject_id, date, place, lecturer)
VALUE ("Past Test", 5, "2022-12-11", "HT54", 6), ("Nest exam", 6, "2022-12-17", "AT554", 6), ("Agile Test", 5, "2022-12-27", "4HT4", 2);