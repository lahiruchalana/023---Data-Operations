USE lexiicon;

CREATE TABLE department(
	department_id INT NOT NULL,
    department_name VARCHAR(56) NOT NULL,
    manager_id INT,
    location_id INT,
    PRIMARY KEY(department_id)
);

CREATE TABLE employee(
	employee_id INT NOT NULL,
    first_name VARCHAR(56) NOT NULL,
    last_name VARCHAR(56) NOT NULL,
    email VARCHAR(56) NOT NULL,
    phone_number INT,
    hire_date DATE NOT NULL,
    job_id VARCHAR(32),
    salary DOUBLE NOT NULL,
    manager_id INT,
    department_id INT,
    PRIMARY KEY (employee_id),
    CONSTRAINT FK_department FOREIGN KEY (department_id) REFERENCES department(department_id)
);

INSERT INTO department
VALUES (10, "Administration", 200, 1500), (20, "Marketing", 201, 1300), (30, "Purchasing", 114, 1500), (40, "Human Resource", 203, 1800), (50, "Shipping", 121, 1900), (60, "IT", 103, 1900), (90, "Executive", 100, 1700) ;

SELECT * FROM department;

INSERT INTO employee
VALUES (100, "Steven", "King", "stevenk@gmail.com", 768945625, "2021-11-05", "EMP", 100000, null, 90);

SELECT * FROm employee;

INSERT INTO employee
VALUES (101, "Neena", "Kogh", "neena@gmail.com", 768565625, "2021-11-05", "EMP", 24568.20, 100, 90), 
		(102, "Lex", "John", "lex@gmail.com", 777945625, "2005-11-15", "EMP", 24568.20, 100, 90), 
		(103, "Alexander", "Hunold", "hunol@gmail.com", 789655625, "2001-11-12", "EMP", 13568.50, 102, 60),
        (104, "Bruce", "Hean", "bruc@gmail.com", 777745625, "2002-11-15", "EMP", 8568.25, 103, 60),
        (105, "David", "Jr", "david@gmail.com", 778965625, "2011-11-25", "EMP", 7581.50, 103, 60),
        (106, "Valli", "Austin", "valli@gmail.com", 799865625, "2012-01-25", "EMP", 7005.60, 103, 60),
        (107, "Diana", "L0tter", "diana@gmail.com", 788945625, "2000-10-25", "EMP", 6584.20, 103, 60),
        (108, "Nancy", "Pauls", "pnancy@gmail.com", 702945625, "2009-09-05", "EMP", 19485.56, 101, 50),
        (109, "Daniel", "Alexy", "alexy@gmail.com", 777995625, "2010-08-15", "EMP", 13548.80, 108, 50),
        (110, "John", "Dani", "dani@gmail.com", 777888625, "2011-11-12", "EMP", 17854.20, 108, 50)
;

UPDATE employee 
SET salary = salary + 100;