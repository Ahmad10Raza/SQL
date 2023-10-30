# Retrieving Data

Retrieving data from a database in SQL is done using the `SELECT` statement. This statement allows you to specify which columns you want to retrieve and which table(s) you want to retrieve the data from. You can also apply various conditions, sorting, and filtering to the data using additional clauses.

Here's a basic example of how to retrieve data from a hypothetical "employees" table:

Suppose you have an "employees" table with the following structure:

```sql

CREATETABLE employees (

    employee_id INTPRIMARYKEY,

    first_name VARCHAR(50),

    last_name VARCHAR(50),

    job_title VARCHAR(50),

    salary DECIMAL(10, 2),

    hire_date DATE

);

```

To retrieve data from this table, you can use the `SELECT` statement. Here are some common scenarios:

1. Retrieving all columns for all employees:

```sql

SELECT * FROM employees;

```

This query selects all rows and columns from the "employees" table, returning information about all employees.

2. Retrieving specific columns for all employees:

```sql

SELECT first_name, last_name, job_title FROM employees;

```

This query selects only the "first_name," "last_name," and "job_title" columns for all employees.

3. Retrieving data based on a condition:

```sql

SELECT * FROM employees WHERE job_title ='Manager';

```

This query retrieves all columns for employees with the job title "Manager."

4. Sorting the data:

```sql

SELECT * FROM employees ORDER BY hire_date DESC;

```

This query retrieves all columns for all employees and orders the result by the "hire_date" column in descending order (from newest to oldest).

5. Limiting the number of rows returned:

```sql

SELECT * FROM employees LIMIT10;

```

This query retrieves the first 10 rows from the "employees" table.

6. Retrieving data from multiple tables (joining):

```sql

SELECTemployees.first_name, departments.department_name

FROM employees

INNER JOIN departments ONemployees.department_id=departments.department_id;

```

This query retrieves the "first_name" from the "employees" table and the "department_name" from the "departments" table, joining them based on the "department_id" column.



Here are some examples of retrieving data operations in SQL:

* **SELECT all rows from a table:**

SQL

```
SELECT * FROM employees;
```

* **SELECT specific columns from a table:**

SQL

```
SELECT name, salary FROM employees;
```

* **SELECT rows where a column value matches a certain value:**

SQL

```
SELECT * FROM employees WHERE name = 'Lionel Messi';
```

* **SELECT rows where a column value is between two values:**

SQL

```
SELECT * FROM employees WHERE salary BETWEEN 500000 AND 1000000;
```

* **SELECT rows where a column value does not match a certain value:**

SQL

```
SELECT * FROM employees WHERE name != 'Cristiano Ronaldo';
```

* **SELECT rows that are grouped by a column value:**

SQL

```
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
```

* **SELECT rows that are ordered by a column value:**

SQL

```
SELECT name, salary
FROM employees
ORDER BY salary DESC;
```

* **SELECT rows that are the result of a join between two tables:**

SQL

```
SELECT employees.name, departments.name AS department_name
FROM employees
JOIN departments ON employees.department_id = departments.id;
```

These are just a few examples of the many retrieving data operations that are possible in SQL. By using SQL, you can easily retrieve the data you need from your database, regardless of how complex your query is.

Here is an example of a more complex retrieving data operation in SQL:

SQL

```
SELECT employees.name, employees.salary, departments.name AS department_name
FROM employees
JOIN departments ON employees.department_id = departments.id
WHERE employees.salary > 10000000 AND departments.name IN ('Sales', 'Marketing');
```


**This query will retrieve the names, salaries, and department names of all employees who earn more than $10 million and work in the Sales or Marketing department.**

**As you can see, SQL is a powerful language for retrieving data from databases. By learning SQL, you will be able to create complex queries to retrieve the data you need, exactly the way you need it.**


These are just a few examples of how you can retrieve data from a SQL database. SQL provides various functions and operators to manipulate and filter data, allowing you to retrieve the specific information you need.
