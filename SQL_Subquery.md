# SQL Subquery

A subquery, also known as an inner query or nested query, is a query nested within another SQL query. Subqueries are often used to retrieve data that will be used in the main query to further filter, compare, or manipulate the results. Subqueries can appear in various parts of a SQL statement, including the SELECT, FROM, WHERE, and HAVING clauses.

Here's an explanation of SQL subqueries with examples:

1. **Subquery in the WHERE Clause**:

   Subqueries in the WHERE clause are used to filter the results of the main query based on the results of the subquery.

   Example: Find employees with salaries above the average salary.

   ```sql
   SELECT employee_name, salary
   FROM employees
   WHERE salary > (SELECT AVG(salary) FROM employees);
   ```
2. **Subquery in the SELECT Clause**:

   Subqueries in the SELECT clause are used to retrieve a single value that becomes part of the result set.

   Example: Calculate the difference between each employee's salary and the average salary.

   ```sql
   SELECT employee_name, salary, (salary - (SELECT AVG(salary) FROM employees)) AS salary_difference
   FROM employees;
   ```
3. **Subquery in the FROM Clause (Derived Table)**:

   Subqueries in the FROM clause are used to create a temporary result set, which can then be used as a table in the main query.

   Example: List the departments and the number of employees in each department.

   ```sql
   SELECT d.department_name, employee_count
   FROM departments d
   JOIN (SELECT department_id, COUNT(*) AS employee_count FROM employees GROUP BY department_id) e
   ON d.department_id = e.department_id;
   ```
4. **Correlated Subquery**:

   A correlated subquery is a subquery that depends on the values from the outer query. It is executed once for each row returned by the main query.

   Example: Find employees with salaries greater than the average salary in their respective departments.

   ```sql
   SELECT employee_name, salary
   FROM employees e1
   WHERE salary > (SELECT AVG(salary) FROM employees e2 WHERE e1.department_id = e2.department_id);
   ```
5. **Subquery with EXISTS**:

   The EXISTS keyword is used with subqueries to check for the existence of rows that meet a specified condition.

   Example: Find departments with at least one employee.

   ```sql
   SELECT department_name
   FROM departments d
   WHERE EXISTS (SELECT 1 FROM employees e WHERE d.department_id = e.department_id);
   ```
6. **Subquery with IN**:

   The IN keyword is used to compare a value with the result set of a subquery.

   Example: Find employees who work in departments with specific department IDs.

   ```sql
   SELECT employee_name, department_id
   FROM employees
   WHERE department_id IN (SELECT department_id FROM departments WHERE department_id IN (101, 102));
   ```

Subqueries are a powerful tool in SQL and can help you write more complex queries by breaking down the problem into smaller, more
