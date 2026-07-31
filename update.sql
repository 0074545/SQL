use banking_db;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) not null,
    LastName VARCHAR(50) not null,
    Email VARCHAR(100) not null,
    Phone bigint not null,
    AccountCreationDate DATE
);

select * from Customers;

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate)
VALUES(1, 'Zaid', 'Nalband', 'zaidnalband@gmail.com', '9423219315', '2026-01-21'),
(2, 'Tanay', 'Soni', 'tanaysoni@gmail.com', '9352736485', '2026-04-12'),
(3, 'Muhad', 'Panhalkar', 'Muhadpanhalkar@gmail.com', '6482946120', '2026-02-23'),
(4, 'Affan', 'Bagwan', 'affanbagwan@gmail.com', '9112015770', '2026-04-21');

CREATE TABLE Accounts (
    AccountID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2)
);

select * from Accounts;


select AccountID from Account;

select AccountID, Balance from Accounts;

CREATE TABLE Transactions (
    TransactionID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20)
);

CREATE TABLE Branches (
    BranchID INT,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE AccountBranches ( 
		AssignmentDate DATE
);

CREATE TABLE Loans (
    LoanID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE
);

use banking_db;

ALTER TABLE Customers
ADD DateOfBirth DATE;

use banking_db;

ALTER TABLE Customers
MODIFY Phone VARCHAR(20);

ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);

select * from Accounts;




