CREATE DATABASE Function_Practice;

USE Function_Practice;

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Joining_Date DATE,
    Birth_Date DATE
);

ALTER TABLE Employees
ADD Phone_Number VARCHAR(15);

ALTER TABLE Employees
MODIFY First_Name VARCHAR(100);

ALTER TABLE Employees
DROP COLUMN Phone_Number;

INSERT INTO Employees
(Employee_ID, First_Name, Last_Name, Email, Department, Salary, Joining_Date, Birth_Date)
VALUES
(1, 'Zaid', 'Nalband', 'zaid@gmail.com', 'Data Analyst', 50000, '2025-06-15', '2003-05-20'),
(2, 'Rahul', 'Sharma', 'rahul@gmail.com', 'IT', 45000, '2024-01-10', '2002-08-15'),
(3, 'Priya', 'Patil', 'priya@gmail.com', 'HR', 40000, '2023-07-20', '2001-12-05'),
(4, 'Amit', 'Kumar', 'amit@gmail.com', 'Finance', 55000, '2022-03-25', '2000-02-18'),
(5, 'Sneha', 'Joshi', 'sneha@gmail.com', 'Marketing', 48000, '2025-02-01', '2003-11-30');

select * from Employees;

SELECT UPPER(First_Name) FROM Employees;
SELECT LOWER(Email) FROM Employees;
SELECT LENGTH(First_Name) FROM Employees;
SELECT CONCAT(First_Name, ' ', Last_Name) FROM Employees;
SELECT SUBSTRING(First_Name, 1, 3) FROM Employees;

select Employee_ID, Email, Department, Salary, Joining_Date, Birth_Date, concat(First_Name, " " , Last_Name) AS Customer_FullName from Employees;

select Employee_ID, Email, Department, Salary, Joining_Date, Birth_Date, UPPER(First_Name) AS Customer_first_name_in_upper from Employees;

select Employee_ID, Email, Department, Salary, Joining_Date, Birth_Date, LOWER(First_Name) AS Customer_first_name_in_lower from Employees;

select Employee_ID, Email, Department, Salary, Joining_Date, Birth_Date, length(First_Name) AS Customer_first_Name_length from Employees;

select *, trim(First_name) AS proper_formating from Employees;

select *, substring(First_Name,2,2) as use_case_of_substring from Employees;

select *, REPLACE(First_Name,"a","A") AS replacement_a_from_A FROM Employees;

select *, now() AS Current_date_and_time from Employees;

select *, year(Birth_Date) AS YEAR FROM Employees;

select *, month(Birth_Date) as month from Employees;

select *, day(Birth_Date) AS day FROM Employees;

select *, DATEDIfF(Joining_Date,Birth_Date) AS Days_required from Employees;

