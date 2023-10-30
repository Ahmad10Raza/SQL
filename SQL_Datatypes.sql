-- CREATE DATABASE all_data_types;

USE konoha;

CREATE TABLE data_types (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  hire_date DATE NOT NULL,
  is_active BOOLEAN NOT NULL,
  binary_data BINARY(1024) NOT NULL,
  text_data TEXT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO data_types (name, age, salary, hire_date, is_active, binary_data, text_data)
VALUES ('John Doe', 30, 100000.00, '2023-10-31', TRUE, BINARY(0x0011223344556677), 'This is some text data.');

SELECT * FROM data_types;
