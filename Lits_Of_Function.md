SQL offers a variety of built-in functions that allow you to perform operations on data in your database. Below is a list of some commonly used SQL functions, along with descriptions and examples of how to use them:

1. **SELECT Statement**:

   - **Description**: The SELECT statement is used to retrieve data from one or more tables.
   - **Example**:
     ```sql
     SELECT first_name, last_name FROM employees;
     ```
2. **DISTINCT**:

   - **Description**: The DISTINCT keyword is used to retrieve unique values in a column.
   - **Example**:
     ```sql
     SELECT DISTINCT department FROM employees;
     ```
3. **COUNT()**:

   - **Description**: The COUNT() function returns the number of rows or non-null values in a column.
   - **Example**:
     ```sql
     SELECT COUNT(*) FROM orders;
     ```
4. **SUM()**:

   - **Description**: The SUM() function calculates the sum of numeric values in a column.
   - **Example**:
     ```sql
     SELECT SUM(total_amount) FROM sales;
     ```
5. **AVG()**:

   - **Description**: The AVG() function calculates the average (mean) of numeric values in a column.
   - **Example**:
     ```sql
     SELECT AVG(salary) FROM employees;
     ```
6. **MIN()**:

   - **Description**: The MIN() function retrieves the minimum (smallest) value in a column.
   - **Example**:
     ```sql
     SELECT MIN(price) FROM products;
     ```
7. **MAX()**:

   - **Description**: The MAX() function retrieves the maximum (largest) value in a column.
   - **Example**:
     ```sql
     SELECT MAX(score) FROM exam_results;
     ```
8. **UCASE() / UPPER()**:

   - **Description**: Converts a string to uppercase.
   - **Example**:
     ```sql
     SELECT UCASE(first_name) FROM students;
     ```
9. **LCASE() / LOWER()**:

   - **Description**: Converts a string to lowercase.
   - **Example**:
     ```sql
     SELECT LCASE(last_name) FROM employees;
     ```
10. **CONCAT() / ||**:

    - **Description**: Combines two or more strings into one.
    - **Example**:
      ```sql
      SELECT CONCAT(first_name, ' ', last_name) FROM employees;
      ```
11. **SUBSTRING() / SUBSTR()**:

    - **Description**: Extracts a substring from a string based on a starting position and length.
    - **Example**:
      ```sql
      SELECT SUBSTRING(product_name, 1, 3) FROM products;
      ```
12. **LENGTH() / LEN() / CHAR_LENGTH()**:

    - **Description**: Returns the length (number of characters) of a string.
    - **Example**:
      ```sql
      SELECT LENGTH(description) FROM products;
      ```
13. **NOW() / CURRENT_TIMESTAMP**:

    - **Description**: Returns the current date and time.
    - **Example**:
      ```sql
      SELECT NOW() AS current_datetime FROM dual;
      ```
14. **DATE_FORMAT()**:

    - **Description**: Formats a date or timestamp in a specific way.
    - **Example**:
      ```sql
      SELECT DATE_FORMAT(order_date, '%Y-%m-%d') AS formatted_date FROM orders;
      ```
15. **COALESCE()**:

    - **Description**: Returns the first non-null value in a list of expressions.
    - **Example**:
      ```sql
      SELECT COALESCE(preferred_email, secondary_email, 'No Email Provided') AS contact_email FROM customers;
      ```
16. **CASE WHEN**:

    - **Description**: Performs conditional logic in SQL queries.
    - **Example**:
      ```sql
      SELECT employee_name, CASE WHEN salary > 50000 THEN 'High Salary' ELSE 'Low Salary' END AS salary_category FROM employees;
      ```


17. **DATE Functions**:

    - **Description**: SQL provides various functions to work with date values, such as `DATEADD()`, `DATEDIFF()`, and `DATEPART()`, to manipulate and extract date components.
    - **Example**:
      ```sql
      SELECT DATEADD(MONTH, 3, order_date) AS future_date FROM orders;
      ```
18. **TRIM() / LTRIM() / RTRIM()**:

    - **Description**: Removes leading and trailing spaces from a string.
    - **Example**:
      ```sql
      SELECT TRIM(' ' FROM product_name) AS trimmed_name FROM products;
      ```
19. **UPPER() / LOWER() (Standard SQL)**:

    - **Description**: Converts a string to uppercase or lowercase (standard SQL).
    - **Example**:
      ```sql
      SELECT UPPER(product_name) FROM products;
      ```
20. **FIRST() / LAST() (Standard SQL)**:

    - **Description**: Retrieves the first or last row in a result set (standard SQL).
    - **Example**:
      ```sql
      SELECT FIRST(1) FROM employees;
      ```
21. **EXTRACT() (Standard SQL)**:

    - **Description**: Extracts a specific component (year, month, day, etc.) from a date or timestamp (standard SQL).
    - **Example**:
      ```sql
      SELECT EXTRACT(YEAR FROM hire_date) AS hire_year FROM employees;
      ```
22. **RANDOM() / RAND() (Database-specific)**:

    - **Description**: Generates a random number or value. The function name may vary by database system (e.g., RANDOM() in PostgreSQL and RAND() in MySQL).
    - **Example**:
      ```sql
      SELECT RANDOM() AS random_number FROM random_data;
      ```
23. **NVL() / ISNULL() / IFNULL() / COALESCE() (Database-specific)**:

    - **Description**: Provides a default value if a column is null. The function name may vary by database system.
    - **Example**:
      ```sql
      SELECT NVL(order_total, 0) AS total_with_default FROM orders;
      ```
24. **CONVERT() / CAST() (Database-specific)**:

    - **Description**: Converts data types from one type to another. The function name and syntax may vary by database system.
    - **Example**:
      ```sql
      SELECT CAST(order_date AS DATE) AS converted_date FROM orders;
      ```
25. **STRING_AGG() (SQL Server) / LISTAGG() (Oracle)**:

    - **Description**: Aggregates strings from multiple rows into a single string, with a specified separator.
    - **Example (SQL Server)**:
      ```sql
      SELECT department, STRING_AGG(employee_name, ', ') AS employee_list FROM employees GROUP BY department;
      ```
26. **BIT_AND() / BIT_OR() (PostgreSQL)**:

    - **Description**: Calculates the bitwise AND or OR operation for a set of values.
    - **Example**:
      ```sql
      SELECT department, BIT_AND(permission_flags) AS common_flags FROM employees GROUP BY department;
      ```


27. **CONCAT_WS() (Database-specific)**:

- **Description**: Concatenates values with a specified separator. The function name and syntax may vary by the database system.
- **Example (MySQL)**:
  ```sql
  SELECT CONCAT_WS(', ', first_name, last_name) AS full_name FROM employees;
  ```

28. **GROUP_CONCAT() (MySQL) / STRING_AGG() (SQL Server)**:

- **Description**: Aggregates values from multiple rows into a single string with optional delimiters.
- **Example (MySQL)**:
  ```sql
  SELECT department, GROUP_CONCAT(employee_name) AS employee_list FROM employees GROUP BY department;
  ```
- **Example (SQL Server)**:
  ```sql
  SELECT department, STRING_AGG(employee_name, ', ') AS employee_list FROM employees GROUP BY department;
  ```

29. **JSON Functions**:

- **Description**: Database systems like MySQL and PostgreSQL offer various functions to work with JSON data. These functions allow you to query, extract, and manipulate JSON objects and arrays within your data.
- **Example (MySQL)**:
  ```sql
  SELECT JSON_EXTRACT(customer_info, '$.email') AS email FROM customers;
  ```

30. **GREATEST() / LEAST() (Database-specific)**:

- **Description**: Returns the greatest or least value among a list of expressions. The function name and syntax may vary by the database system.
- **Example (PostgreSQL)**:
  ```sql
  SELECT GREATEST(salary, bonus) AS max_compensation FROM employees;
  ```

31. **MD5() / SHA1() (Database-specific)**:

- **Description**: Calculates the MD5 or SHA1 hash of a string.
- **Example (MySQL)**:
  ```sql
  SELECT MD5(password) AS password_hash FROM users;
  ```

32. **SOUNDEX() (Database-specific)**:

- **Description**: Converts a string into a phonetic code to compare word pronunciations.
- **Example (MySQL)**:
  ```sql
  SELECT SOUNDEX(last_name) AS soundex_code FROM employees;
  ```

33. **PI() (Database-specific)**:

- **Description**: Returns the mathematical constant π (pi). The function name and availability may vary by the database system.
- **Example (PostgreSQL)**:
  ```sql
  SELECT PI() AS pi_value;
  ```

34. **DATE_TRUNC() (PostgreSQL) / TRUNC() (Oracle)**:

- **Description**: Truncates a date or timestamp to a specific level of precision (e.g., year, month, day).
- **Example (PostgreSQL)**:
  ```sql
  SELECT DATE_TRUNC('month', order_date) AS truncated_date FROM orders;
  ```


35. **USER() / CURRENT_USER() (Database-specific)**:

- **Description**: Retrieves the current user or username associated with the database connection.
- **Example (MySQL)**:
  ```sql
  SELECT USER() AS current_user;
  ```

36. **NOW() / GETDATE() / SYSDATE() (Database-specific)**:

- **Description**: Retrieves the current date and time.
- **Example (Oracle)**:
  ```sql
  SELECT SYSDATE AS current_datetime FROM dual;
  ```

37. **ROW_NUMBER() / RANK() / DENSE_RANK() (Database-specific)**:

- **Description**: Assigns a unique number to each row within a result set, typically used in window functions to perform ranking and pagination.
- **Example (SQL Server)**:
  ```sql
  SELECT employee_name, ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num FROM employees;
  ```

38. **LEAD() / LAG() (Database-specific)**:

- **Description**: Accesses the value of a column from the next or previous row in a result set, typically used in window functions for time series analysis.
- **Example (PostgreSQL)**:
  ```sql
  SELECT event_time, LEAD(value) OVER (ORDER BY event_time) AS next_value FROM events;
  ```

39. **XML Functions**:

- **Description**: Database systems like Oracle and SQL Server offer functions to work with XML data, allowing you to query, extract, and manipulate XML documents stored in the database.
- **Example (SQL Server)**:
  ```sql
  SELECT xml_column.value('(/Root/Element)[1]', 'nvarchar(max)') AS element_value FROM xml_data;
  ```

40. **PIVOT / UNPIVOT (Database-specific)**:

- **Description**: Allows for dynamic transformation of data by converting rows into columns (PIVOT) or columns into rows (UNPIVOT). These operations are often used in reporting and analytics.
- **Example (SQL Server)**:
  ```sql
  SELECT *
  FROM (SELECT department, salary FROM employees) AS source
  PIVOT (SUM(salary) FOR department IN ([HR], [IT], [Finance])) AS pivoted_data;
  ```

41. **REGEXP Functions (Database-specific)**:

- **Description**: Provides regular expression support for pattern matching and text manipulation. The availability and function names may vary by the database system.
- **Example (PostgreSQL)**:
  ```sql
  SELECT name FROM employees WHERE name ~ 'John|Jane';
  ```

42. **CURRENT_ROLE (Database-specific)**:

- **Description**: Retrieves the current role associated with the database session.
- **Example (PostgreSQL)**:
  ```sql
  SELECT CURRENT_ROLE AS current_user_role;
  ```

These additional SQL functions cover a range of capabilities, from window functions for analytical queries to specialized functions for working with XML, regular expressions, and dynamic data transformations. The functions you use will depend on the specific requirements of your SQL queries and the database system you are working with.
