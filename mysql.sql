create database banking_07;
use banking_07;
CREATE TABLE Customers
(
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);
drop table Customers;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);

alter table Customers
add person varchar(50);

select * from Customers;

insert into Customers(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, person)
values (001,"Zaid","Nalband","z@gmail.com",9423219315,"2026-07-06","zaid");

alter table Customers
drop person;

alter table Customers
rename column Phone TO phonenumber;

alter table Customers
modify phonenumber bigint;

alter table Customers
add constraint chk_








































































