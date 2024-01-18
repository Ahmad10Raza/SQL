# Cascading For  FK

Cascading referential actions for foreign keys in SQL allow you to define what happens when a record in the referenced table (parent) is updated or deleted. These actions are defined at the time of creating a foreign key constraint and help maintain referential integrity in the database. There are four common cascading actions:

1. **CASCADE**: When a record in the referenced (parent) table is updated or deleted, the corresponding records in the referencing (child) table are also updated or deleted. This can lead to a cascading effect throughout the database.
2. **SET NULL**: When a record in the referenced (parent) table is updated or deleted, the foreign key columns in the referencing (child) table are set to NULL. This is useful when you want to break the association without deleting the child records.
3. **SET DEFAULT**: Similar to SET NULL, but instead of setting foreign key columns to NULL, they are set to their default values if default values are defined.
4. **RESTRICT (NO ACTION)**: This option restricts the update or deletion of a referenced record in the parent table if it would cause orphaned records in the child table. It effectively prevents any action that would violate referential integrity.

Here's an example of how to define cascading actions when creating a foreign key in SQL:

```sql
-- Create a parent table
CREATE TABLE parent (
    parent_id INT PRIMARY KEY,
    parent_name VARCHAR(50)
);

-- Create a child table with a foreign key that cascades on update
CREATE TABLE child (
    child_id INT PRIMARY KEY,
    parent_id INT,
    child_name VARCHAR(50),
    FOREIGN KEY (parent_id) REFERENCES parent(parent_id)
    ON UPDATE CASCADE  -- Cascades on update
    ON DELETE SET NULL -- Sets to NULL on delete
);
```

In this example, the foreign key in the "child" table has cascading actions defined:

- If the "parent_id" in the "parent" table is updated, the corresponding "parent_id" values in the "child" table will also be updated.
- If a record in the "parent" table is deleted, the "parent_id" values in the "child" table will be set to NULL.

You can choose the appropriate cascading action based on your specific database design and business requirements to maintain data consistency and integrity.
