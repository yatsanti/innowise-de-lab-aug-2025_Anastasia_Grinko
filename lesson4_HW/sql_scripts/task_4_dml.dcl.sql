--Задание 4: DML/DCL
--Цель: Практика более сложных DML-операций с использованием предложений WHERE, множественных обновлений
--1. Увеличить Salary всех сотрудников в отделе 'HR' на 10%.
UPDATE Employees 
SET salary = salary * 1.10
WHERE department = 'HR';

**скрин:task4_step1**

--2. Обновить Department любого сотрудника с Salary выше 70000.00 на 'Senior IT'.
UPDATE Employees 
SET department = 'Senior IT'
WHERE employeeid =(
	SELECT employeeid 
	FROM Employees
	WHERE salary > 70000
	LIMIT 1
);

**скрин:task4_step2**

--3. Удалить всех сотрудников, которые не назначены ни на один проект в 
--таблице EmployeeProjects. Подсказка: Используйте подзапрос NOT EXISTS или LEFT JOIN
DELETE FROM Employees
WHERE employeeid IN (
    SELECT e.EmployeeID
    FROM Employees e
    LEFT JOIN EmployeeProjects ep ON e.employeeid = ep.employeeid
    WHERE ep.employeeid IS NULL
);

**скрин:task4_step3**

--4. Вставить новый проект и назначить на него двух существующих
--сотрудников с определенным количеством HoursWorked в
--EmployeeProjects, и все это в одном блоке BEGIN/COMMIT.
BEGIN;
	INSERT INTO Projects ( projectid, projectname, budget, startdate, enddate)
	VALUES ('4', 'AI Research', 300000, '2023-06-01', '2024-01-01');

	INSERT INTO EmployeeProjects(employeeid, projectid, hoursworked)
	VALUES (2, 4, 120);
	
	INSERT INTO EmployeeProjects(employeeid, projectid, hoursworked)
	VALUES (1, 4, 150);
	
	COMMIT;

**скрин:task4_step4.1 и task4_step4.2**