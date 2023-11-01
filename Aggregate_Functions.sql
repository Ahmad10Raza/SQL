CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    GPA NUMERIC(3, 2)
);

-- Insert some sample data
INSERT INTO students (student_id, first_name, last_name, date_of_birth, GPA)
VALUES
    (1, 'John', 'Doe', '2000-05-15', 3.75),
    (2, 'Jane', 'Smith', '2001-08-20', 3.95),
    (3, 'Bob', 'Johnson', '1999-02-10', 2.80),
    (4, 'Alice', 'Williams', '2002-11-05', 3.60);

-- Calculate the number of students
SELECT COUNT(*) AS total_students FROM students;

-- Calculate the average GPA
SELECT AVG(GPA) AS average_gpa FROM students;

-- Find the student with the highest GPA
SELECT first_name, last_name, GPA
FROM students
WHERE GPA = (SELECT MAX(GPA) FROM students);

-- Find the student with the lowest GPA
SELECT first_name, last_name, GPA
FROM students
WHERE GPA = (SELECT MIN(GPA) FROM students);
