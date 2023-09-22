-- CRUD Operations
-- Acronym that describes EVERYTHING we can do with data
-- CREATE -  READ  - UPDATE  - DELETE

-- ! CREATE -- 
-- MySQL command : INSERT
Sql Syntax :  INSERT INTO table_name (column1,column2) VALUES (value1,value2);
-- - id  : Auto Incrementing 
-- - created_at & updated_at have default values and expressions
-- Insert One
INSERT INTO users (first_name,last_name,email) VALUES ("John","Wick","j@w.com");
-- Insert Many 
INSERT INTO users (first_name,last_name,email) VALUES ("Steve","Jones","s@j.com"), ("Max","Williams","m@w.com"),("Sarah","Daniel","s@d.com"),("John","Wick","j@w.com");


-- ! READ --
-- MySQL command : SELECT
-- Select All
Sql Syntax : SELECT * FROM table_name;
Sql Syntax : SELECT column1,column3 FROM table_name; 
SELECT * FROM users;
-- All with specific columns
SELECT first_name,last_name FROM users;
-- Select only one user : add a condition
SELECT * FROM users WHERE id = 3;
SELECT * FROM users WHERE first_name = "Max";
-- Select users with first_name starting with J
SELECT * FROM users WHERE first_name LIKE "J%";
-- first_name ends with s
SELECT * FROM users WHERE first_name LIKE "%s";
-- first_name contains "a"
SELECT * FROM users WHERE first_name LIKE "%a%";

-- Sorting 

-- Ascending Order
SELECT * FROM users ORDER BY first_name;
SELECT * FROM users ORDER BY first_name ASC;
-- Descending Order
SELECT * FROM users ORDER BY first_name DESC;


-- SELECT the last two added users
SELECT * FROM users ORDER BY id DESC LIMIT 2;
SELECT * FROM users WHERE id > 3;

-- ! UPDATE --
-- MySQL command : UPDATE
Sql Syntax : UPDATE  table_name SET column_1  = new_value_1, column_2 = new_value_2 WHERE condition;
-- ! condition is very Important & need to be specific : So we will update only the specific user

SET SQL_SAFE_UPDATES = 0;

Sql Syntax : UPDATE  table_name SET column_1  = new_value_1, column_2 = new_value_2 WHERE condition;
-- ! id = Primary Key  : Unique , Not Null
UPDATE users SET first_name = "Bob", last_name = "Marley" ,email ="b@m.com" WHERE id  = 5;

-- ! DELETE --
-- MySQL command : DELETE
Sql Syntax : DELETE FROM table_name WHERE condition;

DELETE FROM users WHERE id = 6;

-- !FUNCTIONS

SELECT COUNT(*) as "number_of_users" FROM users;
SELECT CONCAT(first_name,last_name) as "full_name", email FROM users;
SELECT CONCAT_WS(" ",first_name,last_name) as "full_name", email FROM users;