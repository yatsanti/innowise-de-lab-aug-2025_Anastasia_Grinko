--Задание 1:DML
--Цель: Практика базовой вставки, выборки, простого обновления и удаления данных.
--1. Вставить двух новых сотрудников в таблицу Employees.
INSERT INTO employees (employeeid, firstname, lastname, department, salary)
VALUES (6, 'Anna', 'Vens', 'Finance', 64000),
	   (7, 'Michael', 'Arban', 'IT', 81000);

**скрин:task1_step1**

--2. Выбрать всех сотрудников из таблицы Employees.
SELECT * FROM employees;

--3. Выбрать только FirstName и LastName сотрудников из отдела 'IT'.
SELECT firstname, lastname
FROM employees 
WHERE department = 'IT';

**скрин:task1_step3**

--4. Обновить Salary 'Alice Smith' до 65000.00.
UPDATE employees
SET salary = 65000.00
WHERE firstname ='Alice' and lastname = 'Smith';  

--5. Удалить сотрудника, чья LastName — 'Prince'.
DELETE FROM employeeprojects 
WHERE employeeid = (SELECT employeeid FROM employees WHERE lastname = 'Prince');

DELETE FROM employees 
WHERE lastname = 'Prince';

--6. Проверить все изменения, используя SELECT * FROM Employees;
SELECT * FROM Employees;

**скрин:task1_step6**