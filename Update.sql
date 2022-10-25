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