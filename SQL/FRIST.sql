CREATE DATABASE TASKS;

USE TASKS;

CREATE table EMPLOYEES(
ID INT PRIMARY KEY,
NAME VARCHAR(20),
AGE INT,
SALARY DECIMAL (10,2),
DEPARMANT VARCHAR (10)
);

INSERT INTO EMPLOYEES(ID , NAME , AGE , SALARY , DEPARMANT)
VALUES

(1 , 'RAHUL' , 19 , 55000 , 'HR'),
(2 , 'SUMIT' , 25 , 60000 , 'MA'),
(3 , 'JAY' , 18 , 80000 , 'HA'),
(4 , 'VIJAY' , 29 , 65000 , 'DC'),
(5 , 'STAYM' , 27 , 75000 , 'HE');


CREATE TABLE STUDENT(
ID INT PRIMARY KEY,
NAME VARCHAR(10),
AGE INT,
MARKS INT(3),
CITY VARCHAR (10)
);

INSERT INTO STUDENT (ID , NAME , AGE , MARKS , CITY )
VALUES
(1 , 'JAY' , 16 , 89 , 'RAJKOT'),
(2 , 'VIJAY' , 14 , 95 , 'AMRELI'),
(3 , 'SATAYM' , 17 , 65 , 'JAMNAGAR'),
(4 , 'SUMIT' , 19 , 55 , 'DELHI'),
(5 , 'RAHUL' , 15 , 98 , 'AHEMDABAD'),
(6 , 'KARAN' , 18 , 66 , 'RAMPUR');

-- display all columns from the Students table.--

SELECT * FROM STUDENT;

-- display only name and marks of all students.--

SELECT NAME , MARKS FROM STUDENT;

-- find students whose marks are greater than 70.--

SELECT * FROM STUDENT WHERE MARKS > 70;

-- Write a query to find students who belong to the city 'RAJKOT'. --

SELECT * FROM STUDENT WHERE CITY = 'RAJKOT';

-- find employees whose salary is less than 60000--

SELECT * FROM EMPLOYEES WHERE SALARY < 60000;

-- find students who are from Delhi AND marks > 60.

SELECT * FROM STUDENT WHERE CITY = 'DELHI' AND MARKS >60;

-- find employees who work in HR OR IT department.

SELECT * FROM EMPLOYEES WHERE DEPARMANT = 'HR';

-- find students who are NOT from DELHI.

SELECT * FROM STUDENT WHERE CITY = 'DELHI' ;

-- display students ordered by marks in descending order.

SELECT * FROM STUDENT 
ORDER BY MARKS DESC;

-- display employees ordered by salary in ascending order.

SELECT * FROM EMPLOYEES 
ORDER BY SALARY ASC;

-- display top 5 students based on marks.

SELECT * FROM STUDENT 
ORDER BY MARKS DESC
LIMIT 5;

-- display first 3 employees from the Employees table.

SELECT * FROM EMPLOYEES 
LIMIT 3;

-- the total number of employees in each department.

SELECT SUM(ID)
FROM EMPLOYEES;

-- find the average salary of each department.

SELECT AVG(SALARY)
FROM EMPLOYEES;

-- show departments whereL average salary is greater than 40000.

SELECT * FROM EMPLOYEES WHERE SALARY > 40000;

-- show cities having more than 2 students.

SELECT CITY , MAX(MARKS) AS MAX_MARKS
FROM STUDENT
GROUP BY CITY
HAVING MAX(MARKS) >90
LIMIT 2;

 -- find the maximum marks scored by students.

SELECT MAX(MARKS) 
FROM STUDENT;

-- find the minimum salary among employees.

SELECT MIN(SALARY)
FROM EMPLOYEES;

-- find the average marks of all students.

SELECT AVG(MARKS)
FROM STUDENT;

-- find the total number of students.

SELECT SUM(ID)
FROM STUDENT;
