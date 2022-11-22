USE lexiicon;

SELECT DATE_FORMAT(CURRENT_TIMESTAMP, '%Y-%m-%d');

SELECT DATEDIFF("2022-06-25", "2017-06-15");

SELECT employee_id, MIN(hire_date)
FROM employee;

# 4th
ALTER TABLE employee
ADD employee_status CHAR(36);

# Find the oldest employee
SELECT employee.employee_id, employee.first_name, MIN(hire_date) AS hire_date, employee.employee_status, employee.department_id
FROM employee 
INNER JOIN department ON department.department_id = employee.department_id
WHERE employee.department_id IS NOT NULL AND employee.employee_status IS NULL AND department.manager_id != employee.employee_id;

# When price received for a employee, then make that employee's employee_status to "Yes"
UPDATE employee
SET employee_status = "Yes"
WHERE employee_id = 100;


#5th
UPDATE department
INNER JOIN employee ON department.department_id = employee.department_id
SET department.manager_id = 101
WHERE employee.employee_id = 101;


SELECT * FROM employee;