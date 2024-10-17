-- This SQL script creates a stored procedure named `ComputeAverageScoreForUser`
-- that computes the average score of a user and updates the `average_score` column
DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser (userId INT)
BEGIN
    SELECT AVG(score) INTO @average_score FROM corrections WHERE user_id = userId;
    UPDATE users SET average_score = @average_score WHERE id = userId;
END;//

DELIMITER ;
