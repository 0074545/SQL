CREATE DATABASE CompanyDBb;

USE CompanyDBb;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Email VARCHAR(100),
    Salary DECIMAL(10,2),
    DepartmentID INT,
    
    FOREIGN KEY (DepartmentID) 
    REFERENCES Departments(DepartmentID)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    EmployeeID INT,
    
    FOREIGN KEY (EmployeeID) 
    REFERENCES Employees(EmployeeID)
);

INSERT INTO Departments VALUES
(1, 'IT', 'Pune'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Delhi'),
(4, 'Marketing', 'Pune');

INSERT INTO Employees VALUES
(101, 'Zaid', 'zaid@gmail.com', 50000, 1),
(102, 'Rahul', 'rahul@gmail.com', 45000, 2),
(103, 'Ayesha', 'ayesha@gmail.com', 60000, 1),
(104, 'Priya', 'priya@gmail.com', 55000, 3),
(105, 'Aman', 'aman@gmail.com', 40000, NULL);

INSERT INTO Projects VALUES
(201, 'Data Analysis', 101),
(202, 'Website Development', 103),
(203, 'Recruitment System', 102),
(204, 'Banking System', 104);

SELECT 
    Employees.EmployeeName,
    Employees.Salary,
    Departments.DepartmentName,
    Departments.Location
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

select * from Departments;

select * from Projects;

select * from Employees;

select t1.DepartmentID , t2.DepartmentID -- INNER JOIN
FROM Departments t1
JOIN Employees t2
ON t1.DepartmentID = t2.DepartmentID;

select t1.DepartmentID , t2.DepartmentID
FROM Departments t1
JOIN Employees t2
USING (DepartmentID);

SELECT e.DepartmentID, d.DepartmentID
FROM Departments e, Employees d
WHERE e.DepartmentID = d.DepartmentID;

select t1.DepartmentID , t2.DepartmentID -- LEFT JOIN
FROM Departments t1
LEFT JOIN Employees t2
ON t1.DepartmentID = t2.DepartmentID;

select t1.DepartmentID , t2.DepartmentID
FROM Departments t1
LEFT JOIN Employees t2
USING (DepartmentID);

select t1.DepartmentID , t2.DepartmentID
FROM Departments t1
LEFT JOIN Employees t2
ON t1.DepartmentID = t2.DepartmentID
WHERE t2.DepartmentID IS NULL;

select t1.DepartmentID , t2.EmployeeName -- right jion
FROM Departments t1
RIGHT JOIN Employees t2
ON t1.DepartmentID = t2.EmployeeName;

select t1.DepartmentID , t2.EmployeeName
FROM Departments t1
RIGHT JOIN Employees t2
USING (DepartmentID);

select t1.DepartmentID , t2.EmployeeName
FROM Departments t1
RIGHT JOIN Employees t2
ON t1.DepartmentID = t2.DepartmentID
WHERE t2.EmployeeName IS NULL;


select t1.DepartmentID , t2.EmployeeName
FROM Departments t1
RIGHT JOIN Employees t2
ON t1.DepartmentID = t2.EmployeeName;

select t1.DepartmentID , t2.EmployeeName
FROM Departments t1
LEFT JOIN Employees t2
ON t1.DepartmentID = t2.EmployeeName;

SELECT E.EmployeeName,D.DepartmentName -- full outer join
FROM Employees E
LEFT JOIN Departments D
ON E.DepartmentID = D.DepartmentID

UNION

SELECT E.EmployeeName,D.DepartmentName
FROM Employees E
RIGHT JOIN Departments D
ON E.DepartmentID = D.DepartmentID;



