-- SQL to fix question IDs 106 and 107 to match their order numbers 25 and 26
-- This script should be run once to fix the existing data

-- 1. First check if questions with IDs 25 and 26 exist (to avoid conflicts)
-- If they do exist, we need to handle them carefully or abort the migration
SELECT id FROM questions WHERE id IN (25, 26);

-- 2. Begin transaction for safety
START TRANSACTION;

-- 3. Update question_options references first
UPDATE question_options SET question_id = 25 WHERE question_id = 106;
UPDATE question_options SET question_id = 26 WHERE question_id = 107;

-- 4. Update user_answers if any students have answered these questions
UPDATE user_answers SET question_id = 25 WHERE question_id = 106;
UPDATE user_answers SET question_id = 26 WHERE question_id = 107;

-- 5. Finally update the questions table
UPDATE questions SET id = 25 WHERE id = 106 AND order_num = 25;
UPDATE questions SET id = 26 WHERE id = 107 AND order_num = 26;

-- 6. Verify the changes worked as expected
SELECT id, order_num, question_text FROM questions WHERE id IN (25, 26) OR id IN (106, 107);

-- 7. If everything looks good, commit the changes
-- Otherwise, you can run ROLLBACK; to undo everything
COMMIT;