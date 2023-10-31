USE employees;

INSERT INTO employees (name, job_title,department, salary)
VALUES ('John Doe', 'Manager','UnKnown', 60000.00);


UPDATE employees
SET salary = 65000.00
WHERE id = 1;


DELETE FROM employees
WHERE id = 2;