-- Active: 1709707512010@@127.0.0.1@5432@abtahihasan
CREATE TABLE STUDENTS(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INTEGER,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)


INSERT INTO STUDENTS(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
    ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
    ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
    ('Emman', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
    ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
    ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
    ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
    ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
    ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
    ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
    ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
    ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
    ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
    ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
    ('Mia', 'Hernandez', 20, 'C', 'History', 'mia.hernandez@example.com', '2004-05-18', 'AB-', 'Canada'),
    ('James', 'Young', 21, 'B', 'Biology', 'james.young@example.com', '2003-02-08', 'O-', 'UK'),
    ('Emma', 'Gonzalez', 24, 'A', 'Physics', NULL, '1999-09-30', 'B+', 'Australia'),
    ('Miam', 'Wright', 19, 'C', 'Math', 'liam.wright@example.com', '2002-06-14', 'A+', 'New Zealand');



SELECT * FROM STUDENTS ORDER BY age ASC

SELECT * FROM STUDENTS ORDER BY age DESC



SELECT * FROM STUDENTS ORDER BY first_name ASC;
SELECT * FROM STUDENTS ORDER BY first_name DESC


SELECT  last_name from STUDENTS ORDER BY first_name ASC





-- data filtering








-- Select students from the USA

SELECT * FROM STUDENTS
    WHERE country = 'USA';

-- Select students with 'A' grade in Physics
SELECT * FROM STUDENTS
    WHERE grade = 'A' AND course = 'Physics'

-- Select students with a specific blood group ('A+')
SELECT * FROM STUDENTS
    WHERE blood_group = 'A+'

-- Select students from the USA or from Australia
SELECT  * FROM STUDENTS
    WHERE country = 'USA' OR country = 'Australia';
-- Select students from the USA or from Australia and the age is 20
SELECT  * FROM STUDENTS
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20


-- Select students with a grade of 'A' or 'B' in Math or Physics:

SELECT * FROM STUDENTS
    WHERE (grade = 'A' OR grade = 'B') AND (course = 'Math' OR course = 'Physics');

SELECT * FROM STUDENTS
    WHERE age > 20


SELECT COALESCE(email, 'email not provided') FROM STUDENTS;


SELECT * FROM STUDENTS
    WHERE country NOT IN('USA', 'Canada')



SELECT * FROM STUDENTS
    WHERE age BETWEEN 22 AND 23


SELECT * FROM STUDENTS
    WHERE first_name ILIKE 'a%'


SELECT TO_CHAR(NOW(), 'DDD')


SELECT CURRENT_DATE - INTERVAL '1 HOUR'

SELECT CURRENT_DATE - INTERVAL '1 DAY'

SELECT CURRENT_DATE - INTERVAL '1 WEEK'

SELECT CURRENT_DATE - INTERVAL '1 MONTH'

SELECT CURRENT_DATE - INTERVAL '1 YEAR'


SELECT AGE(CURRENT_DATE, '02-19-2004')

SELECT EXTRACT(MONTH FROM '2004-02-19'::DATE)



  