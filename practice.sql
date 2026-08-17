create database CompanyDB;

USE CompanyDB;

CREATE table EMPLOYEES 
(EmpID integer primary key,
NAME_ VARCHAR(50) NOT NULL,
DEPARTMENT VARCHAR(30),
SALARY DECIMAL,
DATE_OF_JOINING DATE
);

alter table EMPLOYEES
add column DeptID tinyint;

ALTER TABLE Departments
ADD CONSTRAINT FK_Departments_DeptID
FOREIGN KEY (DeptID)
REFERENCES EMPLOYEES(DeptID);

ALTER TABLE EMPLOYEES
add column EMAIL varchar(100) not null;

alter table EMPLOYEES
modify SALARY DECIMAL NOT NULL;

ALTER TABLE EMPLOYEES
rename column NAME_ TO FULL_NAME;

alter table EMPLOYEES
rename to staff;

alter table staff
add constraint uq_employee_email unique (email);

alter table staff
add constraint chk_salary check (salary > 0);

alter table staff
drop column EMAIL;

truncate staff;

drop table DEPARTMENTS;

alter table staff
add column (first_name varchar(50), last_name varchar(50), email varchar(30));

insert into staff (EmpID,full_name,DEPARTMENT,SALARY, DATE_OF_JOINING)
values ("1","ZAID","IT","45000","2026-03-02"),
(2,"soni","IT",35000,"2026-03-02"),
(3,"bagwan","IT", "43000","2026-04-03");

update staff set SALARY =55000 where EmpID=1;

UPDATE staff
set SALARY=SALARY * 1.10;

set SQL_SAFE_UPDATES=0;

delete from staff
where EmpID=2;

delete from staff
where DATE_OF_JOINING<'2026-04-03';

select * from staff;





