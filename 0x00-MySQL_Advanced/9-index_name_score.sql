-- This script creates an index on the name and score columns of the names table.
-- The index is named idx_name_first_score.
CREATE INDEX idx_name_first_score ON names (name(1), score);
