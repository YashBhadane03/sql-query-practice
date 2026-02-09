SHOW DATABASES;
USE company;
-- SQL Assignment – Functions
-- 1. Display the total number of employees using COUNT().
SELECT COUNT(*) FROM employees;

-- 2. Show the highest salary using MAX().
SELECT MAX(e_salary) FROM employees;

-- 3. Show the lowest salary using MIN().
SELECT MIN(e_salary) FROM employees;


-- 4. Display the average salary using AVG().
SELECT AVG(e_salary) FROM employees;

-- 5. Display the sum of all salaries using SUM().
SELECT SUM(e_salary) FROM employees;

-- 6. Convert all employee names to UPPER().
SELECT upper(e_name) FROM employees;

-- 7. Convert all employee names to LOWER().
SELECT LOWER(e_name) FROM employees;
-- 8. Find the LENGTH() of each employee name.
SELECT length(e_name) FROM employees;

-- 9. Extract the first 3 characters of each employee name using LEFT().
SELECT LEFT(e_name,3) FROM employees;

-- 10. Extract the last 3 characters of each employee name using RIGHT().
SELECT RIGHT(e_name,3) FROM employees;

-- 11. Reverse each employee name using REVERSE().
SELECT REVERSE(e_name) FROM employees;

-- 12. Round each salary to 2 decimals using ROUND().
SELECT ROUND(e_salary,2) FROM employees;

-- 13. Extract only the DATE() from a datetime column.
SELECT DATE(e_doj) FROM employees;

-- 14. Find date difference using DATEDIFF().
SELECT DATEDIFF('2025-01-02','2024-01-01') FROM employees;


-- 15. Extract the YEAR() from join_date.
SELECT YEAR(e_doj) FROM employees;

-- 16. Extract the MONTH() from join_date.
SELECT MONTH(e_doj) FROM employees;

-- 17. Extract the DAY() from join_date.
SELECT DAY(e_doj) FROM employees;

-- 18. Format salary to 2 decimals using FORMAT().
SELECT FORMAT(e_salary,2) FROM employees;

-- 19. Use MOD() to find remainder when salary is divided by 1000.
SELECT  MOD(e_salary,1000) FROM employees;

-- 20. Calculate POWER(salary,2).
SELECT POWER(e_salary,2) FROM employees;

-- 21. Find absolute difference between salary and 50000 using ABS().
SELECT ABS(e_salary-50000) FROM employees;

-- 22. Extract substring of emp_name using SUBSTRING().
SELECT SUBSTRING(e_name,1,4) FROM employees;


-- 23. Replace 'a' with 'A' in emp_name using REPLACE().
SELECT REPLACE(e_name,'a','A') FROM employees;

-- 24. Remove spaces from emp_name using TRIM().
SELECT TRIM(e_name) FROM employees;


-- 25. Pad employee IDs to 5 digits using LPAD().
SELECT LPAD(e_id,5,0) FROM employees;

-- 26. Pad employee IDs on the right using RPAD().
SELECT RPAD(e_id,5,0) FROM employees;

-- 27. Display unique department names using DISTINCT.
SELECT DISTINCT(e_dep) FROM employees;

-- 28. Return salary as 0 when NULL using IFNULL().
SELECT IFNULL(e_salary,0) FROM employees;


-- 29. Convert salary to CHAR using CAST().
SELECT CAST(e_salary AS CHAR) FROM employees;

-- 30. Extract month name from join_date using MONTHNAME().
SELECT MONTHNAME(e_doj) FROM employees;

-- Functions Assignment 2 - EmployeeDB
-- 1. Display each employee’s name with all spaces removed using REPLACE().
SELECT REPLACE(e_name,' ','') FROM Employees;


-- 2. Show the first 5 characters of the department name using SUBSTRING().
SELECT SUBSTRING(e_dep,1,5) FROM Employees;

-- 3. Convert city names to lowercase using LOWER().
SELECT LOWER(e_city) FROM Employees;

-- 4. Show employee names padded to 15 characters using RPAD().
SELECT RPAD(e_name,15,' ') FROM Employees;

-- 5. Display employee names with leading zeros using LPAD().
SELECT LPAD(e_name,15,'0') FROM Employees;

-- 6. Display the character length of each department using CHAR_LENGTH().
SELECT e_dep,CHAR_LENGTH(e_dep) FROM Employees;


-- 7. Extract the middle 4 characters from emp_name using SUBSTRING().
SELECT SUBSTRING(e_name,3,4) FROM Employees;

-- 8. Reverse the city names using REVERSE().
SELECT REVERSE(e_city) FROM Employees;

-- 9. Replace every occurrence of 'e' in emp_name with '*'.
SELECT REPLACE(e_name,'e','*') FROM Employees;

-- 10. Trim both-side spaces from emp_name using TRIM().
SELECT TRIM(e_name) FROM Employees;


-- 11. Find the square root of each salary using SQRT().
SELECT e_name,SQRT(e_salary) FROM Employees;


-- 12. Display salary raised to the power of 3 using POWER().
SELECT POWER(e_salary,3) FROM Employees;


-- 13. Show absolute value of (salary – 30000) using ABS().
SELECT ABS(e_salary-30000) FROM Employees;

-- 14. Round salaries to the nearest thousand using ROUND().
SELECT ROUND(e_salary,-3) FROM Employees;

-- 15. Round salaries down to the nearest integer using FLOOR().
SELECT FLOOR(e_salary) FROM Employees;


-- 16. Round salaries up to the nearest integer using CEIL().
SELECT CEIL(e_salary) FROM Employees;


-- 17. Display the remainder when salary is divided by 7 using MOD().
SELECT MOD(e_salary,7) FROM Employees;


-- 18. Show natural logarithm of each salary using LOG().
SELECT LOG(e_salary) FROM Employees;


-- 19. Show base-10 logarithm of each salary using LOG10().
SELECT LOG10(e_salary) FROM Employees;


-- 20. Show exponential value of 2^salary using EXP().
SELECT EXP(e_salary) FROM Employees;

-- 21. Show the MONTHNAME() for each join_date.
SELECT MONTHNAME(e_doj) FROM Employees;


-- 22. Display DAYNAME() for each join_date.
SELECT DAYNAME(e_doj) FROM Employees;

-- 23. Extract the hour from NOW() using EXTRACT().
SELECT EXTRACT(HOUR FROM NOW());


-- 24. Add 15 days to join_date using DATE_ADD().
SELECT DATE_ADD(e_doj,INTERVAL 15 DAY) FROM Employees;

-- 25. Subtract 90 days from join_date using DATE_SUB().
SELECT DATE_SUB(e_doj,INTERVAL 90 DAY) FROM Employees;


-- 26. Display number of days each employee has worked using DATEDIFF(NOW(), join_date).
SELECT DATEDIFF(NOW(),e_doj) FROM Employees;


-- 27. Extract only the date portion of NOW() using DATE().
SELECT DATE(NOW());

-- 28. Extract the YEAR from join_date using EXTRACT(YEAR FROM join_date).
SELECT EXTRACT(YEAR FROM e_doj) FROM Employees;

-- 29. Extract the MONTH from join_date using MONTH().
SELECT EXTRACT(MONTH FROM e_doj) FROM Employees;

-- 30. Extract the DAY from join_date using DAY().
SELECT EXTRACT(DAY FROM e_doj) FROM Employees;

-- 31. Count how many unique departments exist using COUNT(DISTINCT department).
SELECT COUNT(DISTINCT e_dep) FROM Employees;

-- 32. Find the total number of cities listed using COUNT(DISTINCT city).
SELECT COUNT(DISTINCT e_city) FROM Employees;

-- 33. Show total salary grouped by department using SUM().
SELECT e_dep,SUM(e_salary) FROM Employees 
GROUP BY e_dep;

-- 34. Display the average length of employee names using AVG(LENGTH(emp_name)).
SELECT AVG(LENGTH(e_name)) FROM Employees;

-- 35. Show minimum and maximum salary per city using MIN() and MAX().
SELECT e_city, MIN(e_salary),MAX(e_salary) FROM Employees
GROUP BY e_city;

-- 36. Display how many employees have salary values rounded above 50000.
SELECT COUNT(*) FROM Employees WHERE ROUND(e_salary)>50000;

-- 37. Display the highest 3 salary values using MAX() with LIMIT.
SELECT MAX(e_salary) FROM Employees 
GROUP BY e_salary
ORDER BY MAX(e_salary) DESC
LIMIT 3;


-- 38. Count how many employees have salary divisible by 1000 using MOD().
SELECT COUNT(*) FROM Employees WHERE MOD(e_salary,1000) = 0;


-- 39. Show total employees whose name ends with 'a' using RIGHT().
SELECT COUNT(*) FROM Employees WHERE RIGHT(e_name,1) = 'a';

-- 40. Display total number of employees who joined in the current year using YEAR().
SELECT COUNT(*) FROM Employees WHERE YEAR(e_doj) = YEAR(NOW());
