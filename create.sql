USE master
--CREATE DATABASE taxi
USE taxi
/*
DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql += N'
ALTER TABLE ' + QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id))
    + '.' + QUOTENAME(OBJECT_NAME(parent_object_id)) + 
    ' DROP CONSTRAINT ' + QUOTENAME(name) + ';'
FROM sys.foreign_keys;

PRINT @sql;
EXEC sp_executesql @sql;
drop table Employees
drop table Cars
drop table Tariffs
--drop table Salary
drop table Passengers
drop table Calls
*/
-- Создание таблицы таксистов
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1, 1),
    Name VARCHAR(100),
    Address VARCHAR(100),
    PhoneNumber VARCHAR(10) NULL,
    Passport VARCHAR(15),
);

-- Создание таблицы машин
CREATE TABLE Cars (
    CarID INT PRIMARY KEY IDENTITY(1, 1),
    ModelName VARCHAR(20),
    Brand VARCHAR(20),
	GovNumber VARCHAR(7),
	Mileage FLOAT DEFAULT 0.0,
	ReleaseYear INT,
	LastRepair DATE,
    --TechnicalSpecifications VARCHAR(100),
    CountryOfOrigin VARCHAR(50),
    Price MONEY,
    EmployeeID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
);

-- Создание таблицы тарифов
CREATE TABLE Tariffs (
    TariffID INT PRIMARY KEY IDENTITY(1, 1),
    TariffName VARCHAR(50),
    PricePerKilometer MONEY
);

/*
-- Создание таблицы зарплат
CREATE TABLE Salary (
    EmployeeID INT,
    SalaryDate DATE,
    CallsCount INT,
    SalaryAmount MONEY,
    FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID)
);
*/

-- Создание таблицы пассажиров
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY IDENTITY(1, 1),
    Name VARCHAR(100),
    PhoneNumber VARCHAR(10) NULL
);

-- Создание таблицы вызовов
CREATE TABLE Calls (
    CallID INT PRIMARY KEY IDENTITY(1, 1),
    CarID INT,
    CallDate DATE,
    PickupTime TIME,
    DropOffTime TIME,
    PickupLocation VARCHAR(100),
    DropOffLocation VARCHAR(100),
    Distance FLOAT,
    WaitTimePenalty INT,
    PaymentMethod VARCHAR(20),
    CustomerMark VARCHAR(100),
	PassengerID INT,
	TariffID INT,
	FOREIGN KEY (TariffID) REFERENCES Tariffs(TariffID),
    FOREIGN KEY (CarID) REFERENCES Cars (CarID),
    FOREIGN KEY (PassengerID) REFERENCES Passengers (PassengerID)
);