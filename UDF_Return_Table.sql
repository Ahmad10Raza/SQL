USE UDF;
DELIMITER //

CREATE FUNCTION get_user_data() RETURNS TABLE (
    user_id INT,
    username VARCHAR(255),
    email VARCHAR(255)
)
BEGIN
    DECLARE result_data TABLE (
        user_id INT,
        username VARCHAR(255),
        email VARCHAR(255)
    );

    -- Populate the result_data table with your data
    INSERT INTO result_data (user_id, username, email)
    VALUES
        (1, 'user1', 'user1@example.com'),
        (2, 'user2', 'user2@example.com');

    -- Return the result_data table
    RETURN result_data;
END //

DELIMITER ;

SELECT * FROM get_user_data();
