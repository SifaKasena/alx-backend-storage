-- This script creates a view that shows the students that have a score lower than 80
-- and that have not had a meeting in the last month.
CREATE VIEW need_meeting
AS
    SELECT name FROM students WHERE score < 80
    AND (last_meeting IS NULL OR last_meeting < NOW() - INTERVAL 1 MONTH);
