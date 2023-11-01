# Constraints

In SQL, constraints are rules and restrictions that are applied to the data in a database table to ensure data integrity and maintain consistency. Constraints enforce specific conditions on columns to prevent the insertion, modification, or deletion of data that does not conform to the defined rules. Here are some common types of constraints with examples:

1. **Primary Key Constraint**:

   A primary key constraint enforces the uniqueness of values in a column and ensures that each row has a unique identifier. This column is often used to identify individual records in a table.

   Example:

   ```sql
   CREATE TABLE students (
       student_id INT PRIMARY KEY,
       first_name VARCHAR(50),
       last_name VARCHAR(50)
   );
   ```
2. **Unique Constraint**:

   A unique constraint ensures that all values in a specified column are unique, but it allows for NULL values.

   Example:

   ```sql
   CREATE TABLE users (
       user_id INT,
       username VARCHAR(50) UNIQUE,
       email VARCHAR(100) UNIQUE
   );
   ```
3. **Check Constraint**:

   A check constraint enforces a condition on a column to ensure that data meets specific criteria.

   Example:

   ```sql
   CREATE TABLE orders (
       order_id INT,
       order_date DATE,
       order_total DECIMAL(10, 2),
       CHECK (order_total >= 0)
   );
   ```

   This check constraint ensures that the order total is always greater than or equal to zero.
4. **Foreign Key Constraint**:

   A foreign key constraint establishes a relationship between two tables by enforcing referential integrity. It ensures that values in a column match values in another table's primary key.

   Example:

   ```sql
   CREATE TABLE orders (
       order_id INT PRIMARY KEY,
       customer_id INT,
       order_total DECIMAL(10, 2),
       FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
   );
   ```

   This foreign key constraint ensures that the "customer_id" in the "orders" table references a valid "customer_id" in the "customers" table.
5. **Default Constraint**:

   A default constraint assigns a default value to a column if no value is provided during insertion.

   Example:

   ```sql
   CREATE TABLE products (
       product_id INT PRIMARY KEY,
       product_name VARCHAR(100),
       price DECIMAL(10, 2) DEFAULT 0.00
   );
   ```

   If a price is not specified when inserting a product, it defaults to 0.00.

These constraints help maintain data integrity, prevent invalid or inconsistent data, and ensure that the database follows the rules defined by the database designer. Constraints play a crucial role in creating robust and reliable database structures.
