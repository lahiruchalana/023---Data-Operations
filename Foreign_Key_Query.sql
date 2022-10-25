USE nyle;

ALTER TABLE task
DROP COLUMN cat_id;

ALTER TABLE task
DROP FOREIGN KEY task_ibfk_2;

ALTER TABLE task
ADD COLUMN ( cat_id INT NOT NULL );
    
ALTER TABLE task
ADD CONSTRAINT fk_category
FOREIGN KEY (cat_id) REFERENCES category(id); -------- NOT WORKING --------

SELECT * FROM task;

SELECT * FROM category;

INSERT INTO task (name, complation_date, column_id)
VALUE ("DSA 2 Test", "2022-11-05", 1);




CREATE TABLE reminder(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

SELECT * FROM reminder;

INSERT INTO reminder (name)
VALUE ("working on class");

ALTER TABLE reminder 
ADD COLUMN (category_id INT NOT NULL);

ALTER TABLE reminder 
ADD CONSTRAINT fk_category
FOREIGN KEY (cat_id) REFERENCES category(id); -------- NOT WORKING -------


-------- REMINDER WORKING FROM HERE (STARTS) -------

DROP TABLE reminder;

CREATE TABLE reminder(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    cat_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT contraint_ct_id
    FOREIGN KEY (cat_id) REFERENCES category(id)
);

INSERT INTO reminder (name, cat_id)
VALUE ("OOP Workings", 2);

SELECT * FROM reminder;

INSERT INTO reminder (name, cat_id)
VALUE ("OOP Workings", 20);

INSERT INTO reminder (name, cat_id)
VALUE ("DSA Workings", 1);