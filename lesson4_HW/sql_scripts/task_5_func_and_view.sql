--Задание 5: Функции и представление 
--Цель: Понять и создать простые SQL-функции и представления в PostgreSQL.
--1. Функция: Создать функцию PostgreSQL с именем CalculateAnnualBonus, которая принимает employee_id и
--Salary в качестве входных данных и возвращает рассчитанную
--сумму бонуса (10 % от Salary) для этого сотрудника. Используйте PL/pgSQL для тела функции.
CREATE OR REPLACE FUNCTION CalculateAnnualBonus( employee_id INT, Salary DECIMAL)
RETURNS DECIMAL AS $$
BEGIN
    RETURN salary * 0.10;
END;
$$ LANGUAGE plpgsql;

**скрин:task5_step1**

--2. Использовать эту функцию в операторе SELECT, чтобы увидеть потенциальный бонус для каждого сотрудника.
SELECT EmployeeID, FirstName, LastName, Salary,
       CalculateAnnualBonus(EmployeeID, Salary) AS Bonus
FROM Employees;

**скрин:task5_step2**

--3. Представление (View): Создать представление с именем IT_Department_View, которое показывает EmployeeID,
--FirstName, LastName и Salary только для сотрудников из отдела 'IT'.
CREATE OR REPLACE VIEW IT_Department_View AS
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Department LIKE '%IT%';

**скрин:task5_step3**

--4. Выбрать данные из вашего представления IT_Department_View.
SELECT * FROM IT_Department_View;

**скрин:task5_step4**