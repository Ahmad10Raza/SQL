-- Create or select the database
CREATE DATABASE IF NOT EXISTS UDF;
USE UDF;

-- Create the function
DELIMITER //

CREATE FUNCTION add_numbers_2(a INT, b INT) RETURNS INT
BEGIN
    DECLARE result INT;
    SET result = a + b;
    RETURN result;
END //

DELIMITER ;


DELIMITER //

CREATE FUNCTION add_numbers(a INT, b INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result = a + b;
    RETURN result;
END //

DELIMITER ;

SET GLOBAL log_bin_trust_function_creators = 1;



SELECT add_numbers(5, 7) AS sum_result;

SELECT add_numbers_2(5, 70) AS sum_result;


--  For multiplication of two number

DELIMITER //

CREATE FUNCTION multiply_numbers(a INT, b INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result = a * b;
    RETURN result;
END //

DELIMITER ;

SELECT multiply_numbers(3, 4) AS product_result;


