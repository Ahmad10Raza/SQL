USE student;
CREATE TABLE students (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    department VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE courses (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    department VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO students (name, department) VALUES
    ('Alice', 'Computer Science'),
    ('Bob', 'Mathematics'),
    ('Carol', 'Physics');

INSERT INTO courses (name, department) VALUES
    ('Introduction to Computer Science', 'Computer Science'),
    ('Calculus I', 'Mathematics'),
    ('Physics 101', 'Physics');

-- Inner Join 
SELECT *
FROM students
INNER JOIN courses ON students.department = courses.department;

--  Left JOIN
SELECT *
FROM students
LEFT JOIN courses ON students.department = courses.department;

SELECT *
FROM students
RIGHT JOIN courses ON students.department = courses.department;


-- SELECT *
-- FROM students
-- FULL OUTER JOIN courses ON students.department = courses.department;


