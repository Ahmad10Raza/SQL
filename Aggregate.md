# Aggregate

Aggregate functions in SQL are used to perform calculations on a set of values and return a single value as a result. These functions are often used in combination with the GROUP BY clause to perform calculations on grouped data. Here are some common aggregate functions in SQL with examples:

1. **COUNT()**:

   The COUNT() function returns the number of rows in a group.

   Example:

   ```sql
   SELECT COUNT(*) FROM orders;
   ```
2. **SUM()**:

   The SUM() function returns the sum of the values in a numeric column.

   Example:

   ```sql
   SELECT SUM(total_amount) FROM sales;
   ```
3. **AVG()**:

   The AVG() function returns the average (mean) of the values in a numeric column.

   Example:

   ```sql
   SELECT AVG(salary) FROM employees;
   ```
4. **MIN()**:

   The MIN() function returns the minimum (smallest) value in a column.

   Example:

   ```sql
   SELECT MIN(price) FROM products;
   ```
5. **MAX()**:

   The MAX() function returns the maximum (largest) value in a column.

   Example:

   ```sql
   SELECT MAX(score) FROM exam_results;
   ```
6. **GROUP_CONCAT()** (MySQL):

   The GROUP_CONCAT() function concatenates values in a group into a single string with optional delimiters.

   Example (MySQL):

   ```sql
   SELECT department, GROUP_CONCAT(employee_name) FROM employees GROUP BY department;
   ```
7. **STRING_AGG()** (SQL Server):

   The STRING_AGG() function concatenates values in a group into a single string with specified separators.

   Example (SQL Server):

   ```sql
   SELECT department, STRING_AGG(employee_name, ', ') FROM employees GROUP BY department;
   ```
8. **STDEV()** (Standard Deviation):

   The STDEV() function calculates the standard deviation of a set of values in a numeric column.

   Example:

   ```sql
   SELECT STDEV(sales_amount) FROM monthly_sales;
   ```

These aggregate functions are powerful tools for summarizing and analyzing data in SQL. They are often used with the GROUP BY clause to perform calculations on grouped data, making them especially useful for generating reports and statistics.
