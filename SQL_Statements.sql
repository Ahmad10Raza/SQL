CREATE DATABASE student;

USE student;

CREATE TABLE students (
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  class VARCHAR(255) NOT NULL,
  course VARCHAR(255) NOT NULL
);


CREATE DATABASE student;

USE student;

CREATE TABLE students (
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  class VARCHAR(255) NOT NULL,
  course VARCHAR(255) NOT NULL
);

INSERT INTO students (name, age, class, course)
VALUES ('John Doe', 18, '12A', 'Computer Science'),
       ('Jane Doe', 19, '12B', 'Mathematics'),
       ('Peter Parker', 17, '11C', 'Physics'),
       ('Mary Jane Watson', 16, '10D', 'Chemistry'),
       ('Bruce Wayne', 20, '13E', 'Engineering');


-- Insert some random values into the table
INSERT INTO students (name, age, class, course)
SELECT CONCAT('Student ', RAND() * 100), FLOOR(RAND() * 10) + 18, CONCAT('Class ', RAND() * 10), CONCAT('Course ', RAND() * 10)
FROM DUAL
LIMIT 10;


USE student;

SELECT * FROM students;

SELECT * FROM students WHERE age >= 18;

UPDATE students SET course = 'Biology' WHERE name = 'John Doe';

DELETE FROM students WHERE name = 'Jane Doe';

