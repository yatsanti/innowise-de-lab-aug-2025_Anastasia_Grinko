--Задание 2: DDL
--Цель: Практика создания и изменения структуры таблиц.
--1. Создать новую таблицу с именем Departments со столбцами:
--DepartmentID (SERIAL PRIMARY KEY), DepartmentName
--(VARCHAR(50), UNIQUE, NOT NULL), Location (VARCHAR(50))
CREATE TABLE Departments(
DepartmentID SERIAL PRIMARY KEY,
DepartmentName VARCHAR(50) UNIQUE NOT NULL,
Location VARCHAR(50)
);

**скрин:task2_step1**

--2. Изменить таблицу Employees, добавив новый столбец с именем Email (VARCHAR(100)).
ALTER TABLE Employees ADD COLUMN Email VARCHAR(100);

**скрин:task2_step2**

--3. Добавить ограничение UNIQUE к столбцу Email в таблице Employees, предварительно заполнив любыми значениями
UPDATE Employees SET Email = 'asmit@company.com' WHERE employeeid = 1;
UPDATE Employees SET Email = 'bjonson@company.com' WHERE employeeid = 2;
UPDATE Employees SET Email = 'cbrown@company.com' WHERE employeeid = 3;
UPDATE Employees SET Email = 'edavis@company.com' WHERE employeeid = 5;
UPDATE Employees SET Email = 'avens@company.com' WHERE employeeid = 6;
UPDATE Employees SET Email = 'marban@company.com' WHERE employeeid = 7;

ALTER TABLE Employees ADD CONSTRAINT UQ_Email UNIQUE(Email);

**скрин:task2_step3**

--4. Переименовать столбец Location в таблице Departments в OfficeLocation.
ALTER TABLE Departments RENAME COLUMN Location TO OfficeLocation;

**скрин:task2_step4**
