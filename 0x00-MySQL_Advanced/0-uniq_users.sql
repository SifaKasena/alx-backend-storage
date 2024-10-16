-- This script creates a table named `users` if it does not already exist.
-- The `users` table has the columns id, email, and name.
CREATE TABLE IF NOT EXISTS `users` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255)
);
