-- SQL script to add questions 25-50 with options and correct answers
-- For quiz system with synchronized IDs (question ID = order_num)

-- Start transaction for atomic operation
START TRANSACTION;

-- ============================
-- Question 25
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (25, 1, 4, 'Which scheduling algorithm is most appropriate for time-sharing systems?', 'MULTIPLE_CHOICE', 1, 25);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(25, 'First-Come-First-Served (FCFS)', 0, 1),
(25, 'Shortest Job First (SJF)', 0, 2),
(25, 'Round Robin (RR)', 1, 3),
(25, 'Priority Scheduling', 0, 4);

-- ============================
-- Question 26
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (26, 1, 4, 'What is thrashing in an operating system?', 'MULTIPLE_CHOICE', 1, 26);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(26, 'A type of virus that corrupts system files', 0, 1),
(26, 'A state where the CPU is idle for long periods', 0, 2),
(26, 'A situation where the OS spends more time in page swapping than executing processes', 1, 3),
(26, 'A memory leak that causes the system to slow down', 0, 4);

-- ============================
-- Question 27
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (27, 1, 4, 'What is a zombie process in Unix/Linux?', 'MULTIPLE_CHOICE', 1, 27);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(27, 'A process that consumes excessive CPU', 0, 1),
(27, 'A process that has completed execution but still has an entry in the process table', 1, 2),
(27, 'A process that is frozen or unresponsive', 0, 3),
(27, 'A malicious process that attempts to compromise the system', 0, 4);

-- ============================
-- Question 28
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (28, 1, 4, 'Which of the following is NOT a goal of process synchronization?', 'MULTIPLE_CHOICE', 1, 28);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(28, 'Avoiding deadlock', 0, 1),
(28, 'Preventing race conditions', 0, 2),
(28, 'Maximizing the number of context switches', 1, 3),
(28, 'Ensuring mutual exclusion', 0, 4);

-- ============================
-- Question 29
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (29, 1, 4, 'Which of the following is a possible solution to the critical section problem?', 'MULTIPLE_CHOICE', 1, 29);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(29, 'Peterson\'s solution', 1, 1),
(29, 'Buffering', 0, 2),
(29, 'Virtual Memory', 0, 3),
(29, 'Round-Robin scheduling', 0, 4);

-- ============================
-- Question 30
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (30, 1, 4, 'In which memory allocation strategy is the largest free block of memory selected for allocation?', 'MULTIPLE_CHOICE', 1, 30);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(30, 'First Fit', 0, 1),
(30, 'Best Fit', 0, 2),
(30, 'Worst Fit', 1, 3),
(30, 'Next Fit', 0, 4);

-- ============================
-- Question 31
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (31, 1, 1, 'Which of the following is NOT a property of a relational database?', 'MULTIPLE_CHOICE', 1, 31);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(31, 'Data is represented as tables', 0, 1),
(31, 'Each table has a unique name', 0, 2),
(31, 'The order of rows is significant', 1, 3),
(31, 'Each column has a domain of possible values', 0, 4);

-- ============================
-- Question 32
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (32, 1, 1, 'Which normal form ensures that all non-key attributes are fully functionally dependent on the primary key?', 'MULTIPLE_CHOICE', 1, 32);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(32, 'First Normal Form (1NF)', 0, 1),
(32, 'Second Normal Form (2NF)', 1, 2),
(32, 'Third Normal Form (3NF)', 0, 3),
(32, 'Boyce-Codd Normal Form (BCNF)', 0, 4);

-- ============================
-- Question 33
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (33, 1, 1, 'Which SQL join type returns all matching rows from both tables and NULL values for non-matching rows?', 'MULTIPLE_CHOICE', 1, 33);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(33, 'INNER JOIN', 0, 1),
(33, 'LEFT JOIN', 0, 2),
(33, 'RIGHT JOIN', 0, 3),
(33, 'FULL OUTER JOIN', 1, 4);

-- ============================
-- Question 34
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (34, 1, 1, 'What does the ACID property "Isolation" mean in database transactions?', 'MULTIPLE_CHOICE', 1, 34);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(34, 'Transactions are protected from system failures', 0, 1),
(34, 'A transaction brings the database from one valid state to another', 0, 2),
(34, 'Concurrent transactions do not affect each other\'s execution', 1, 3),
(34, 'All parts of a transaction must complete successfully', 0, 4);

-- ============================
-- Question 35
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (35, 1, 1, 'Which of the following is a NoSQL database type?', 'MULTIPLE_CHOICE', 1, 35);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(35, 'Document store', 1, 1),
(35, 'Hierarchical database', 0, 2),
(35, 'Network database', 0, 3),
(35, 'Relational database', 0, 4);

-- ============================
-- Question 36
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (36, 1, 2, 'What does the "C" in CSS stand for?', 'MULTIPLE_CHOICE', 1, 36);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(36, 'Cascading', 1, 1),
(36, 'Complementary', 0, 2),
(36, 'Customizable', 0, 3),
(36, 'Component', 0, 4);

-- ============================
-- Question 37
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (37, 1, 2, 'Which JavaScript method is used to add a new element at the end of an array?', 'MULTIPLE_CHOICE', 1, 37);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(37, 'push()', 1, 1),
(37, 'pop()', 0, 2),
(37, 'unshift()', 0, 3),
(37, 'concat()', 0, 4);

-- ============================
-- Question 38
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (38, 1, 2, 'In React.js, what lifecycle method is called immediately after a component is mounted?', 'MULTIPLE_CHOICE', 1, 38);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(38, 'componentWillMount', 0, 1),
(38, 'componentDidMount', 1, 2),
(38, 'componentWillUpdate', 0, 3),
(38, 'componentDidUpdate', 0, 4);

-- ============================
-- Question 39
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (39, 1, 2, 'Which HTTP status code indicates a successful response?', 'MULTIPLE_CHOICE', 1, 39);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(39, '200', 1, 1),
(39, '404', 0, 2),
(39, '500', 0, 3),
(39, '301', 0, 4);

-- ============================
-- Question 40
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (40, 1, 2, 'Which of the following is NOT a valid HTML5 semantic element?', 'MULTIPLE_CHOICE', 1, 40);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(40, '<article>', 0, 1),
(40, '<section>', 0, 2),
(40, '<content>', 1, 3),
(40, '<aside>', 0, 4);

-- ============================
-- Question 41
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (41, 1, 3, 'Which principle states that derived classes must be substitutable for their base classes?', 'MULTIPLE_CHOICE', 1, 41);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(41, 'Single Responsibility Principle', 0, 1),
(41, 'Open/Closed Principle', 0, 2),
(41, 'Liskov Substitution Principle', 1, 3),
(41, 'Interface Segregation Principle', 0, 4);

-- ============================
-- Question 42
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (42, 1, 3, 'Which design pattern is used to create an object that wraps another object to change its interface?', 'MULTIPLE_CHOICE', 1, 42);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(42, 'Adapter Pattern', 1, 1),
(42, 'Decorator Pattern', 0, 2),
(42, 'Proxy Pattern', 0, 3),
(42, 'Facade Pattern', 0, 4);

-- ============================
-- Question 43
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (43, 1, 3, 'What is encapsulation in object-oriented programming?', 'MULTIPLE_CHOICE', 1, 43);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(43, 'The ability of a class to inherit from multiple parent classes', 0, 1),
(43, 'The process of hiding implementation details and restricting access to data', 1, 2),
(43, 'The ability to create multiple methods with the same name but different parameters', 0, 3),
(43, 'The ability of an object to take on many forms', 0, 4);

-- ============================
-- Question 44
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (44, 1, 3, 'Which of the following is NOT one of the four pillars of OOP?', 'MULTIPLE_CHOICE', 1, 44);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(44, 'Encapsulation', 0, 1),
(44, 'Inheritance', 0, 2),
(44, 'Polymorphism', 0, 3),
(44, 'Compilation', 1, 4);

-- ============================
-- Question 45
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (45, 1, 3, 'In Java, what keyword is used to prevent a method from being overridden?', 'MULTIPLE_CHOICE', 1, 45);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(45, 'static', 0, 1),
(45, 'abstract', 0, 2),
(45, 'final', 1, 3),
(45, 'private', 0, 4);

-- ============================
-- Question 46
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (46, 1, 4, 'What is the purpose of a semaphore in operating systems?', 'MULTIPLE_CHOICE', 1, 46);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(46, 'To protect shared resources in a concurrent environment', 1, 1),
(46, 'To increase CPU utilization', 0, 2),
(46, 'To reduce memory fragmentation', 0, 3),
(46, 'To implement virtual memory', 0, 4);

-- ============================
-- Question 47
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (47, 1, 4, 'Which of the following page replacement algorithms suffers from Belady\'s anomaly?', 'MULTIPLE_CHOICE', 1, 47);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(47, 'Least Recently Used (LRU)', 0, 1),
(47, 'First-In-First-Out (FIFO)', 1, 2),
(47, 'Optimal Page Replacement', 0, 3),
(47, 'Most Recently Used (MRU)', 0, 4);

-- ============================
-- Question 48
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (48, 1, 4, 'What is the main advantage of using demand paging in virtual memory systems?', 'MULTIPLE_CHOICE', 1, 48);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(48, 'It eliminates the need for physical memory', 0, 1),
(48, 'It loads pages into memory only when they are needed', 1, 2),
(48, 'It prevents page faults from occurring', 0, 3),
(48, 'It eliminates the need for page tables', 0, 4);

-- ============================
-- Question 49
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (49, 1, 1, 'What is the primary key in a relational database?', 'MULTIPLE_CHOICE', 1, 49);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(49, 'A key that can have NULL values', 0, 1),
(49, 'A key that uniquely identifies each record in a table', 1, 2),
(49, 'A key that references another table', 0, 3),
(49, 'A key that is automatically incremented', 0, 4);

-- ============================
-- Question 50
-- ============================
INSERT INTO questions (id, quiz_id, subject_id, question_text, question_type, points, order_num) 
VALUES (50, 1, 1, 'Which SQL statement is used to modify existing data in a database?', 'MULTIPLE_CHOICE', 1, 50);

INSERT INTO question_options (question_id, option_text, is_correct, order_num)
VALUES 
(50, 'ALTER', 0, 1),
(50, 'UPDATE', 1, 2),
(50, 'MODIFY', 0, 3),
(50, 'CHANGE', 0, 4);

-- Commit the transaction
COMMIT;

-- Display the newly added questions
SELECT id, order_num, question_text FROM questions WHERE id BETWEEN 25 AND 50 ORDER BY id;