--Задание 3: DCL
--Цель: Научиться создавать пользователей (роли в PostgreSQL) и предоставлять/отзывать базовые разрешения.
--1. Создать нового пользователя PostgreSQL (роль) с именем hr_user и простым паролем.
CREATE ROLE hr_user WITH PASSWORD '123456';

--2. Предоставить hr_user право SELECT на таблицу Employees.
GRANT SELECT ON TABLE Employees TO hr_user;

GRANT CONNECT ON DATABASE postgres TO hr_user;
GRANT USAGE ON SCHEMA public TO hr_user;


--3. Тест: В новой сессии подключиться как hr_user и попытаться выполнить SELECT * FROM Employees;. (Должно сработать).
SELECT * FROM Employees;

**скрин:task3_step3**

--4. Как hr_user, попытаться выполнить INSERT нового сотрудника в Employees. (Должно завершиться неудачей).
INSERT INTO Employees (FirstName, LastName) 
VALUES ('Test', 'User');

--5. Как пользователь-администратор, предоставить hr_user права INSERT и UPDATE на таблицу Employees.
GRANT INSERT, UPDATE ON Employees TO hr_user; 

--6. Тест: Как hr_user, попробовать выполнить INSERT и UPDATE сотрудника. (Теперь должно сработать)
INSERT INTO Employees (employeeid, firstname, lastname, department, salary, email) 
VALUES ('8', 'Francis', 'Jackson', 'IT', 70000.00, 'fjackson@commpany.com');

UPDATE employees 
SET salary = 77000.00
WHERE firstname = 'Francis';

**скрин:task3_step6**
