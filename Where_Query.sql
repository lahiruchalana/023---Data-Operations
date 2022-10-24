USE nyle;

DROP TABLE category;

CREATE TABLE category(
	id INT NOT NULL AUTO_INCREMENT,
    type VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO category( type )
VALUE ( "study" );

SELECT * FROM category;

INSERT INTO category( type )
VALUE ( "self study" ), ( "assignment" ), ( "presentation" ), ( "home work" ), ( "social work" ), ( "sport" );

SELECT * FROM category;

SELECT * FROM category 
WHERE type="study";

SELECT * FROM category
WHERE type="assignment";

SELECT * FROM task
WHERE id=1;

SELECT * FROM task 
WHERE complation_date="2022-11-01";

SELECT * FROM task
WHERE id BETWEEN 2 AND 5;

SELECT * FROM task
WHERE name LIKE "%OOP%";

SELECT * FROm task
WHERE name LIKE "%OOP";

SELECT * FROM task
WHERE name IN ("Assignment of OOP", "Maths Class");

SELECT * FROM task;

SELECT * FROM task 
WHERE name IN ("Assignment of OOP", "Maths class", "Python Class");

SELECT * FROM task 
WHERE name="Assignment of OOP" OR name="Maths Class";

SELECT * FROM task 
WHERE name LIKE "%OOP%" AND id=2;

SELECT * FROM task 
WHERE NOT id=1;

