CREATE database employees;
USE employees;
CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  job_title VARCHAR(255) NOT NULL,
  department VARCHAR(255) NOT NULL,
  salary BIGINT,
  PRIMARY KEY (id)
);


INSERT INTO employees (name, job_title, department, salary)
VALUES ('Lionel Messi', 'Footballer', 'Paris Saint-Germain', 100000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Cristiano Ronaldo', 'Footballer', 'Manchester United', 90000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('LeBron James', 'Basketball Player', 'Los Angeles Lakers', 42168);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Stephen Curry', 'Basketball Player', 'Golden State Warriors', 48070);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Tom Brady', 'American Football Player', 'Tampa Bay Buccaneers', 25000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Roger Federer', 'Tennis Player', 'None', 10000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Rafael Nadal', 'Tennis Player', 'None', 11000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Serena Williams', 'Tennis Player', 'None', 95000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Novak Djokovic', 'Tennis Player', 'None', 105000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Lionel Richie', 'Singer', 'Music Industry', 20000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Beyoncé', 'Singer', 'Music Industry', 80000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Adele', 'Singer', 'Music Industry', 40000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Ed Sheeran', 'Singer', 'Music Industry', 100000);

INSERT INTO employees (name, job_title, department, salary)
VALUES ('Taylor Swift', 'Singer', 'Music Industry', 110000);


-- 1.1 Retrieving All Rows and Columns from a Tabl 

-- Problem
-- You have a table and want to see all of the data in it
select * from employees


-- You have a table and want to see only rows that satisfy a specific condition.

SELECT * FROM employees WHERE salary = 110000.00;

SELECT * FROM employees WHERE job_title = 'Footballer';


-- You want to return rows that satisfy multiple conditions.

SELECT * FROM employees WHERE salary <= 20000 AND job_title='Footballer';


SELECT * FROM employees WHERE salary BETWEEN 500000 AND 1000000;

SELECT * FROM employees WHERE name != 'Cristiano Ronaldo';

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;


SELECT name, salary
FROM employees
ORDER BY salary DESC;


SELECT employees.name, departments.name AS department_name
FROM employees
JOIN departments ON employees.department_id = departments.id;

SELECT employees.name, employees.salary, departments.name AS department_name
FROM employees
JOIN departments ON employees.department_id = departments.id
WHERE employees.salary > 10000000 AND departments.name IN ('Sales', 'Marketing');



















































