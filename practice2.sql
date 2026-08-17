create database salary;

use salary;

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Department VARCHAR(20),
    City VARCHAR(20),
    Gender VARCHAR(10),
    Experience_Years INT,
    Salary DECIMAL(10,2),
    Sales_Amount DECIMAL(12,2)
);

INSERT INTO Employees
(Employee_ID, Department, City, Gender, Experience_Years, Salary, Sales_Amount)
VALUES
(101, 'IT', 'Pune', 'Male', 2, 45000, 120000),
(102, 'IT', 'Mumbai', 'Female', 4, 65000, 180000),
(103, 'HR', 'Pune', 'Female', 3, 50000, 90000),
(104, 'Sales', 'Mumbai', 'Male', 5, 70000, 250000),
(105, 'Sales', 'Pune', 'Male', 7, 85000, 320000),
(106, 'IT', 'Pune', 'Male', 6, 80000, 210000),
(107, 'HR', 'Mumbai', 'Male', 2, 42000, 75000),
(108, 'Sales', 'Mumbai', 'Female', 4, 68000, 190000),
(109, 'IT', 'Delhi', 'Female', 3, 55000, 140000),
(110, 'HR', 'Pune', 'Male', 8, 90000, 110000)
;

select Department, sum(Salary) AS Department
from Employees
group by Department
having SUM(Salary) > 45000 and sum(Sales_Amount) > 90000;

select Department, sum(Salary) AS Department
from Employees
group by Department
having SUM(Salary) > 45000 or sum(Sales_Amount) > 90000;

select * from Employees;

select City, sum(Salary) AS City
from Employees
group by City
having SUM(Salary) > 45000 or sum(Sales_Amount) > 90000;

select City, sum(Salary) AS City
from Employees
group by City
having min(Salary)=55000;

select City, sum(Salary) AS Total_sales
from Employees
group by City,Gender
having avg(Salary);

select *,
	ROW_NUMBER() OVER(ORDER BY Salary DESC) AS row_num
    FROM Employees;

select *,
		row_number() over(
			partition by Department
            order by Salary desc
            )AS row_um
FROM Employees;

select *,
		row_number() over(
			order by Department
            )AS row_um
FROM Employees;

select *,
		dense_rank () over(
			order by Salary desc
			) as rank_num
from Employees;

select *,
		dense_rank () over(
			partition by Department
			order by Salary desc
        ) as rank_num
from Employees;

select *,
		ntile(2) over(ORDER BY Salary desc) AS bucket
FROM Employees;

select *,
		ntile(4) over(ORDER BY Salary desc) AS bucket
FROM Employees;

select*,
		avg(Salary) over() as avg_salary
from Employees;

select *,
sum(Salary)
OVER(
ORDER BY Department)
AS running_total
FROM Employees;

select *,
sum(Salary)
OVER(
PARTITION BY Department)
AS running_total
FROM Employees;

select *,
count(*)
OVER(
PARTITION BY Department)
AS running_total_COUNT
FROM Employees;

SELECT *,
	round(
		Salary * 100.0 /
        SUM(Salary) over(),
        0)
        AS contribution_percentage
from Employees;
