create database Workers;
use Workers;
create table Worker(
  WORKER_ID int primary key,
  FIRST_NAME varchar(30),
  LAST_NAME varchar(30),
  SALARY DECIMAL(8, 2),
  JOINING_DATE datetime,
  DEPARTMENT varchar(30));
  insert into Worker(WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE,DEPARTMENT)
  values
  (1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2024-04-11 09:00:00', 'Admin');
  select * from Worker;
  drop table Worker;
  -- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 
SELECT * FROM Worker
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;
-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table
  SELECT * FROM Worker
  WHERE FIRST_NAME IN ('Vipul', 'Satish');
  -- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
SELECT * FROM Worker
WHERE FIRST_NAME LIKE '_____h';
-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1.
SELECT * FROM Worker
WHERE SALARY >= 1;
-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
SELECT WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE,DEPARTMENT ,COUNT(*)
FROM Worker
GROUP BY WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE,DEPARTMENT
HAVING COUNT(*) > 1;
  -- 6. Write an SQL query to show the top 6 records of a table. 
 SELECT * FROM worker
ORDER BY WORKER_ID
LIMIT 6;
-- 7. Write an SQL query to fetch the departments that have less than five people in them
SELECT DEPARTMENT FROM worker
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;
-- 8. Write an SQL query to show all departments along with the number of people in there
SELECT DEPARTMENT, COUNT(DEPARTMENT) AS number_of_people
FROM Worker
GROUP BY DEPARTMENT;
-- 9. Write an SQL query to print the name of employees having the highest salary in eachd epartment. 
  SELECT MAX(salary)
    FROM Worker
    WHERE SALARY ;
    
    -- Question 2: Open school database, then select student table and use following SQL statements. TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT
create table student(
StdID int primary key,
StdName varchar(50),
Sex varchar(20),
Percentage float  ,
Class int ,
Sec varchar(10),
Streams varchar(30),
DOB date);
INSERT INTO student (StdID, StdName, Sex, Percentage, Class, Sec, Streams, DOB) 
VALUES 
(1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '1998-08-03'), 
(1002, 'MAAHI AGARWAL', 'Female', 56, 11, 'C', 'Commerce', '2008-11-23'), 
(1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '2006-06-29'), 
(1004, 'Ronit Kumar', 'Male', 63, 11, 'C', 'Commerce', '1997-11-05'), 
(1005, 'Dipesh Pulkit', 'Male', 78, 11, 'B', 'Science', '2003-09-14'), 
(1006, 'JAHANVI Puri', 'Female', 60, 11, 'B', 'Commerce', '2008-11-07'), 
(1007, 'Sanam Kumar', 'Male', 23, 12, 'F', 'Commerce', '1998-08-03'), 
(1008, 'SAHIL SARAS', 'Male', 56, 11, 'C', 'Commerce', '2008-11-07'), 
(1009, 'AKSHRA AGARWAL', 'Female', 72, 12, 'B', 'Commerce', '1996-10-01'), 
(1010, 'STUTI MISHRA', 'Female', 39, 11, 'F', 'Science', '2008-11-23'), 
(1011, 'HARSH AGARWAL', 'Male', 42, 11, 'C', 'Science', '1998-08-03'), 
(1012, 'NIKUNJ AGARWAL', 'Male', 49, 12, 'C', 'Commerce', '1998-06-28'), 
(1013, 'AKRITI SAXENA', 'Female', 89, 12, 'A', 'Science', '2008-11-23'), 
(1014, 'TANI RASTOGI', 'Female', 82, 12, 'A', 'Science', '2008-11-23');
-- 1 To display all the records form STUDENT table.  
select * from student;
-- 2. To display any name and date of birth from the table STUDENT. 
SELECT StdName, DOB FROM student ;
-- 3. To display all students record where percentage is greater of equal to 80 FROM student table. 
SELECT * FROM student
 WHERE percentage >= 80;
-- 4. To display student name, stream and percentage where percentage of student is more than 80
SELECT StdName, Streams, Percentage 
from student
WHERE percentage > 80;
-- 5. To display all records of science students whose percentage is more than 75 form student table.
SELECT * FROM student
 WHERE streams = 'Science' AND percentage > 75;



