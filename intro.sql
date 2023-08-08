-- Active: 1691424806454@@127.0.0.1@5432@test2
-- ALTER DATABASE test1 RENAME TO test2;

-- ## create a table 
-- CREATE TABLE student(
--     student_id INT,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     cgpa NUMERIC(1, 2)
-- )

-- ## Rename a table
-- ALTER TABLE student RENAME TO learners

-- ## Drop a table 
-- DROP TABLE learners

CREATE TABLE "user1"(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(20) UNIQUE NOT NULL,
    email  VARCHAR(255) UNIQUE NOT NULL,
    age INT DEFAULT 21
);

-- Insert data in a table
insert into user1 values (4,'robin1', 'robin@gmail1.com' , 62);
-- INSERT INTO user1 (user_id, user_name, email, age) VALUES (2, "Nayeem", "nayeem@gamil.com", 92);
-- DROP TABLE users;

TRUNCATE TABLE user1;


ALTER 
TABLE 
user1 
COLUMN
address 
VARCHAR(40)
;

ALTER TABLE user1 
ADD COLUMN number VARCHAR(20)  DEFAULT "017d20293476";


ALTER TABLE user1 
DROP COLUMN address;

ALTER TABLE user1
add column number VARCHAR(39) DEFAULT '983dsajk';


ALTER TABLE user1
add COLUMN address VARCHAR(76);

ALTER TABLE user1
alter column address type int4range;

ALTER TABLE user1
alter COLUMN address set DEFAULT 'sarail';


INSERT INTO user1 VALUES (10, 'shanto', 'shanto@gamil.com', 23, '01738');

ALTER TABLE user1
RENAME COLUMN address to location;

ALTER TABLE user1 
ADD CONSTRAINT unique_email UNIQUE(email);


ALTER TABLE user1 
DROP CONSTRAINT unique_email;

-- show/get data 
SELECT * FROM user1;
