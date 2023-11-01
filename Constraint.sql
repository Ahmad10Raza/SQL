USE student;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE,
    
    graduation_date DATE,
    GPA NUMERIC(3, 2)
);



-- Insert some sample data
INSERT INTO students (student_id, first_name, last_name, date_of_birth, email, GPA)
VALUES
    (1, 'John', 'Doe', '2000-05-15', 'john.doe@example.com',  3.75),
    (2, 'Jane', 'Smith', '2001-08-20', 'jane.smith@example.com',  3.95),
    (3, 'Bob', 'Johnson', '1999-02-10', 'bob.johnson@example.com', 2.80),
    (4, 'Alice', 'Williams', '2002-11-05', 'alice.williams@example.com',  3.60);

-- Attempt to insert data that violates constraints
INSERT INTO students (student_id, first_name, last_name, date_of_birth, email, GPA)
VALUES
    (5, NULL, 'Invalid', '2003-04-25', 'invalid.email@example.com', 2.30); -- Violates NOT NULL constraint for first_name

-- Update data that violates constraints
UPDATE students
SET GPA = 4.5
WHERE student_id = 3; -- Violates CHECK constraint for GPA

-- Attempt to insert a duplicate email
INSERT INTO students (student_id, first_name, last_name, date_of_birth, email, GPA)
VALUES
    (6, 'David', 'Lee', '2000-03-12', 'john.doe@example.com', 3.85); -- Violates UNIQUE constraint for email
