--We define an employee's total earnings to be their monthly months * salary worked, and the maximum
--total earnings to be the maximum total earnings for any employee in the Employee table.
--Write a query to find the maximum total earnings for all employees as well as the total number of employees
--who have maximum total earnings. Then print these values as 2 space-separated integers.


--1

SELECT months * salary AS EARNINGS, COUNT(*)
FROM EMPLOYEE
GROUP BY EARNINGS
ORDER BY EARNINGS DESC
LIMIT 1;


--2   USING SUBQUERY

SELECT months * salary, COUNT(*)
FROM EMPLOYEE
WHERE salary * months IN
(
    SELECT MAX(salary * months)
    FROM EMPLOYEE
)
GROUP BY 1;