-- SQL Clauses Assignment company 5
CREATE DATABASE Company;
USE Company;
CREATE TABLE Employees(
e_id INT PRIMARY KEY,
e_name VARCHAR(30),
e_age INT,
e_gander VARCHAR(20),
e_city VARCHAR(20),
e_dep VARCHAR(30),
e_salary DECIMAL(10,2),
e_designation VARCHAR(25),
activity_status VARCHAR(20),
performance INT,
e_doj DATE,
email VARCHAR(40),
phone VARCHAR(10));
INSERT INTO Employees (e_id, e_name, e_age, e_gander, e_city, e_dep, e_salary, e_designation, activity_status, performance, e_doj, email, phone) VALUES
(1,'Amit Sharma',28,'Male','Pune','IT',55000,'Developer','Active',4,'2021-03-12','amit1@gmail.com','9876543210'),
(2,'Riya Mehta',32,'Female','Mumbai','HR',48000,'HR Executive','Active',3,'2020-07-18','riya2@gmail.com','9876543211'),
(3,'Karan Patel',26,'Male','Delhi','Finance',62000,'Accountant','Active',4,'2022-01-05','karan3@gmail.com','9876543212'),
(4,'Sneha Kulkarni',30,'Female','Bangalore','Sales',72000,'Sales Executive','Active',5,'2019-11-22','sneha4@gmail.com','9876543213'),
(5,'Rahul Verma',29,'Male','Hyderabad','Marketing',45000,'Marketing Associate','Active',3,'2020-02-14','rahul5@gmail.com','9876543214'),
(6,'Priya Rao',35,'Female','Pune','Admin',38000,'Admin Officer','Active',2,'2018-09-30','priya6@gmail.com','9876543215'),
(7,'Arjun Singh',41,'Male','Delhi','IT',90000,'Team Lead','Active',5,'2016-03-11','arjun7@gmail.com','9876543216'),
(8,'Deepika Jain',27,'Female','Mumbai','Sales',53000,'Sales Executive','On Leave',3,'2021-08-09','deepika8@gmail.com','9876543217'),
(9,'Vikram Desai',33,'Male','Hyderabad','Finance',66000,'Senior Accountant','Active',4,'2017-05-06','vikram9@gmail.com','9876543218'),
(10,'Neha Gupta',24,'Female','Bangalore','HR',35000,'HR Assistant','Inactive',2,'2023-04-13','neha10@gmail.com','9876543219'),
(11,'Sahil Khan',31,'Male','Pune','IT',75000,'Developer','Active',5,'2019-07-10','sahil11@gmail.com','9876543220'),
(12,'Swati Joshi',29,'Female','Delhi','Admin',42000,'Admin Executive','Active',3,'2020-10-20','swati12@gmail.com','9876543221'),
(13,'Manish Kumar',38,'Male','Mumbai','Finance',80000,'Finance Manager','Active',5,'2015-12-01','manish13@gmail.com','9876543222'),
(14,'Aisha Shaikh',27,'Female','Hyderabad','Sales',47000,'Sales Associate','On Leave',3,'2022-06-07','aisha14@gmail.com','9876543223'),
(15,'Rohan Singh',25,'Male','Bangalore','Marketing',36000,'Marketing Intern','Inactive',1,'2023-01-16','rohan15@gmail.com','9876543224'),
(16,'Komal Patil',34,'Female','Pune','HR',58000,'HR Manager','Active',4,'2018-02-02','komal16@gmail.com','9876543225'),
(17,'Aditya Verma',30,'Male','Delhi','IT',72000,'Developer','Active',4,'2019-11-11','aditya17@gmail.com','9876543226'),
(18,'Meera Nair',37,'Female','Mumbai','Finance',69000,'Senior Analyst','Active',4,'2017-08-25','meera18@gmail.com','9876543227'),
(19,'Harsh Kumar',28,'Male','Hyderabad','Sales',51000,'Sales Executive','Active',3,'2020-09-15','harsh19@gmail.com','9876543228'),
(20,'Ritu Jain',32,'Female','Bangalore','Marketing',60000,'Marketing Specialist','Active',5,'2018-05-19','ritu20@gmail.com','9876543229'),
(21,'Aman Yadav',29,'Male','Pune','Admin',40000,'Admin Staff','Active',3,'2021-12-01','aman21@gmail.com','9876543230'),
(22,'Simran Kaur',33,'Female','Delhi','HR',54000,'HR Executive','Active',4,'2019-04-17','simran22@gmail.com','9876543231'),
(23,'Krish Rao',26,'Male','Mumbai','IT',65000,'Developer','Active',4,'2022-02-11','krish23@gmail.com','9876543232'),
(24,'Ananya Sen',31,'Female','Bangalore','Finance',70000,'Accountant','On Leave',3,'2018-07-13','ananya24@gmail.com','9876543233'),
(25,'Rohit Sharma',35,'Male','Hyderabad','Sales',85000,'Sales Manager','Active',5,'2016-09-29','rohit25@gmail.com','9876543234'),
(26,'Nisha Rana',28,'Female','Pune','Marketing',49000,'Digital Marketer','Active',4,'2020-03-08','nisha26@gmail.com','9876543235'),
(27,'Suresh Kumar',42,'Male','Delhi','Admin',55000,'Admin Manager','Active',5,'2015-01-25','suresh27@gmail.com','9876543236'),
(28,'Aarti Sharma',24,'Female','Mumbai','HR',33000,'HR Trainee','Inactive',2,'2023-09-05','aarti28@gmail.com','9876543237'),
(29,'Farhan Ali',29,'Male','Bangalore','IT',78000,'Senior Developer','Active',5,'2018-11-11','farhan29@gmail.com','9876543238'),
(30,'Priya Singh',36,'Female','Hyderabad','Finance',61000,'Analyst','Active',4,'2017-08-07','priya30@gmail.com','9876543239'),
(31,'Vikas Sharma',28,'Male','Pune','Sales',52000,'Sales Executive','Active',3,'2021-05-12','vikas31@gmail.com','9876543240'),
(32,'Shreya Kapoor',33,'Female','Delhi','Marketing',60000,'Marketing Manager','Active',5,'2018-03-21','shreya32@gmail.com','9876543241'),
(33,'Ankit Jain',27,'Male','Mumbai','IT',69000,'Developer','Active',4,'2022-04-09','ankit33@gmail.com','9876543242'),
(34,'Pooja Mehra',29,'Female','Bangalore','HR',47000,'HR Executive','Active',3,'2020-06-17','pooja34@gmail.com','9876543243'),
(35,'Raghav Verma',36,'Male','Hyderabad','Finance',81000,'Finance Manager','Active',5,'2016-11-28','raghav35@gmail.com','9876543244'),
(36,'Neha Sharma',25,'Female','Pune','Marketing',42000,'Marketing Associate','Active',3,'2023-02-14','neha36@gmail.com','9876543245'),
(37,'Sanjay Kumar',41,'Male','Delhi','Admin',56000,'Admin Manager','Active',5,'2015-09-09','sanjay37@gmail.com','9876543246'),
(38,'Kavita Singh',30,'Female','Mumbai','Sales',59000,'Sales Executive','On Leave',4,'2019-10-03','kavita38@gmail.com','9876543247'),
(39,'Ritesh Patel',32,'Male','Bangalore','IT',72000,'Developer','Active',4,'2018-05-21','ritesh39@gmail.com','9876543248'),
(40,'Isha Nair',28,'Female','Hyderabad','HR',45000,'HR Assistant','Active',3,'2021-07-18','isha40@gmail.com','9876543249'),
(41,'Manoj Reddy',29,'Male','Pune','Finance',65000,'Accountant','Active',4,'2020-01-12','manoj41@gmail.com','9876543250'),
(42,'Sana Khan',34,'Female','Delhi','Marketing',58000,'Marketing Specialist','Active',4,'2017-08-25','sana42@gmail.com','9876543251'),
(43,'Rahul Gupta',27,'Male','Mumbai','IT',67000,'Developer','Active',4,'2022-03-19','rahul43@gmail.com','9876543252'),
(44,'Anjali Sharma',31,'Female','Bangalore','HR',50000,'HR Executive','Active',3,'2019-06-22','anjali44@gmail.com','9876543253'),
(45,'Karan Verma',35,'Male','Hyderabad','Sales',83000,'Sales Manager','Active',5,'2016-12-10','karan45@gmail.com','9876543254'),
(46,'Priya Patel',28,'Female','Pune','Marketing',47000,'Digital Marketer','Active',4,'2020-04-07','priya46@gmail.com','9876543255'),
(47,'Ajay Kumar',42,'Male','Delhi','Admin',60000,'Admin Manager','Active',5,'2015-02-28','ajay47@gmail.com','9876543256'),
(48,'Ritika Jain',24,'Female','Mumbai','HR',35000,'HR Trainee','Inactive',2,'2023-05-12','ritika48@gmail.com','9876543257'),
(49,'Devansh Singh',30,'Male','Bangalore','IT',78000,'Senior Developer','Active',5,'2018-09-16','devansh49@gmail.com','9876543258'),
(50,'Megha Nair',36,'Female','Hyderabad','Finance',62000,'Analyst','Active',4,'2017-07-19','megha50@gmail.com','9876543259');
CREATE TABLE department(dept_id INT PRIMARY KEY,dept_name VARCHAR(20),dept_location VARCHAR(40),project_id INT);
ALTER TABLE department
ADD CONSTRAINT fk_department_projects
FOREIGN KEY (project_id) REFERENCES projects(project_id);
INSERT INTO department VALUES
(1,'IT','Pune',101),
(2,'HR','Mumbai',102),
(3,'Finance','Delhi',103),
(4,'Sales','Bangalore',104),
(5,'Marketing','Hyderabad',105),
(6,'Admin','Pune',106),
(7,'IT','Delhi',107),
(8,'HR','Bangalore',108),
(9,'Finance','Mumbai',109),
(10,'Sales','Hyderabad',110);
SELECT DISTINCT e_city, e_dep FROM employees
GROUP BY e_city,e_dep;
CREATE TABLE projects(project_id INT PRIMARY KEY,project_name VARCHAR(40),project_coust DECIMAL(10,2),project_duration INT,dept_id INT);
ALTER TABLE projects
ADD CONSTRAINT fk_projects_department
FOREIGN KEY (dept_id) REFERENCES department(dept_id);

INSERT INTO projects VALUES
(101,'Employee Management System',2500000.00,12,1),
(102,'Recruitment Automation',1800000.00,8,2),
(103,'Financial Audit System',3000000.00,10,3),
(104,'Sales Monitoring Dashboard',2200000.00,9,4),
(105,'Digital Marketing Analytics',2700000.00,11,5),
(106,'Office Resource Automation',1500000.00,7,6),
(107,'Network Security Upgrade',3500000.00,14,1),
(108,'Training Management',1600000.00,6,2),
(109,'Investment Analysis Tool',3200000.00,12,3),
(110,'CRM Development',2800000.00,10,4);

UPDATE employees
SET project_id = 106
WHERE e_dep = 'Admin';

-- 1. Write a query to display all unique departments from the employees table.
SELECT DISTINCT e_dep FROM Employees;


-- 2. Display all distinct cities where employees are located.
SELECT DISTINCT e_city FROM Employees;

-- 3. Display all employees ordered by salary in descending order.
SELECT * FROM Employees ORDER BY e_salary DESC;

-- 4. Display employees ordered by age in ascending order.
SELECT * FROM Employees ORDER BY e_age ASC;

-- 5. List employees ordered by department first, then by salary.
SELECT * FROM Employees
ORDER BY e_dep, e_salary;

-- 6. Find the total number of employees in each department.
SELECT e_dep, COUNT(*) AS total_employees
FROM Employees
GROUP BY e_dep;

-- 7. Display the average salary of employees for each city.
SELECT e_city,AVG(e_salary) AS Average_salary FROM Employees 
GROUP BY e_city;

-- 8. Show the maximum salary in each department.
SELECT e_dep, MAX(e_salary) AS maximum_salary FROM Employees
GROUP BY e_dep;
-- 9. Count how many employees belong to each activity status category.
SELECT activity_status, COUNT(*) FROM Employees
GROUP BY activity_status;

-- 10. Display departments having more than 5 employees.
SELECT e_dep, COUNT(*) FROM Employees
GROUP BY e_dep
HAVING COUNT(*) > 5;

-- 11. List the cities having an average salary greater than 50,000.
SELECT e_city, AVG(e_salary) FROM Employees
GROUP BY e_city
HAVING AVG(e_salary) > 50000;

-- 12. Show departments where the maximum salary is less than 80,000.
SELECT e_dep, AVG(e_salary) FROM Employees
GROUP BY e_dep
HAVING AVG(e_salary) < 80000;

-- 13. Display employees whose salary is between 30,000 and 60,000.
SELECT * FROM Employees WHERE e_salary BETWEEN 30000 AND 60000;

-- 14. List employees whose age is not between 25 and 40.
SELECT * FROM Employees WHERE e_age BETWEEN 25 AND 40;

-- 15. Show employees who joined between '2020-01-01' and '2023-01-01'.
SELECT * FROM Employees WHERE e_doj BETWEEN '2020-01-01' AND '2023-01-01';

-- 16. Display employees who belong to the departments IN ('HR', 'Finance', 'Sales').
SELECT * FROM Employees WHERE e_dep IN ('HR', 'Finance', 'Sales');

-- 17. Display employees whose city is NOT IN ('Mumbai', 'Delhi').
SELECT * FROM Employees WHERE e_city NOT IN ('Mumbai', 'Delhi');

-- 18. Display employees whose designation is IN ('Manager', 'Team Lead').
SELECT * FROM Employees WHERE e_dep IN  ('Manager', 'Team Lead');


-- 19. Display the top 5 highest-paid employees.
SELECT * FROM Employees 
ORDER BY e_salary DESC 
LIMIT 5;


-- 20. Display 5 employees after skipping the first 3.
SELECT * FROM Employees LIMIT 5 OFFSET 3;

-- 21. Display the top 10 youngest employees using ORDER BY and LIMIT.
SELECT * FROM Employees 
ORDER BY e_age  ASC 
LIMIT 10;

-- 22. Display all distinct combinations of department and designation.
SELECT DISTINCT e_dep,e_designation FROM Employees;

-- 23. Show unique department–city pairs where employees are present.
SELECT DISTINCT e_dep,e_city FROM Employees;

-- 24. Display employees ordered by performance ascending and salary descending.
SELECT * FROM Employees ORDER BY performance ASC ,e_salary DESC;

-- 25. Display employees who joined in the last 2 years, ordered by DOJ.
SELECT * FROM Employees;

-- 26. List employees ordered by city, then age descending.
SELECT * FROM Employees
ORDER BY e_city, e_age DESC;

-- 27. For each department, show the total salary expenditure.
SELECT e_dep, SUM(e_salary) AS total_salary
FROM Employees
GROUP BY e_dep;

-- 28. Find the average age of employees for each designation.
SELECT e_designation, AVG(e_age) AS avg_age
FROM Employees
GROUP BY e_designation;


-- 29. Group employees by city and department, and display their count.
SELECT e_city, e_dep, COUNT(*) AS total_employees
FROM Employees
GROUP BY e_city, e_dep;


-- 30. Display the count of employees hired each year.

-- 31. Show departments having average salary > 60,000 and more than 3 employees.
SELECT e_dep, AVG(e_salary) AS avg_salary, COUNT(*) AS total_employees
FROM Employees
GROUP BY e_dep
HAVING AVG(e_salary) > 60000 AND COUNT(*) > 3;


-- 32. Display cities where minimum salary is above 40,000.
SELECT e_city, MIN(e_salary) AS min_salary
FROM Employees
GROUP BY e_city
HAVING MIN(e_salary) > 40000;


-- 33. Display designations having more than 2 employees aged above 35.
SELECT e_designation, COUNT(*) FROM Employees
WHERE e_age > 35
GROUP BY e_designation
HAVING COUNT(*) > 2;


-- 34. List departments where count of active employees is less than 3.
SELECT e_dep, COUNT(*) FROM Employees
WHERE activity_status = 'Active'
GROUP BY e_dep
HAVING COUNT(*) < 3;

-- 35. Display employees whose DOJ is between 2015 and 2020 and salary not between 50,000 and 80,000.
SELECT * FROM Employees
WHERE e_doj BETWEEN '2015-01-01' AND '2020-12-31'
AND e_salary NOT BETWEEN 50000 AND 80000;

-- 36. Display employees aged between 30 and 50 with performance rating between 3 and 5.
SELECT * FROM Employees
WHERE e_age BETWEEN 30 AND 50 AND performance BETWEEN 3 AND 5;


-- 37. List employees whose salary is not between the min and max salary of their department.



-- 38. Display employees whose designation is NOT IN ('Intern','Trainee') and city IN ('Pune','Hyderabad','Bangalore').
SELECT * FROM Employees
WHERE e_designation NOT IN ('Intern','Trainee') 
AND e_city IN ('Pune','Hyderabad','Bangalore');



-- 39. List employees whose department is in ('HR','Admin') but city not in ('Mumbai','Delhi').
SELECT * FROM Employees
WHERE e_dep IN ('HR','Admin') 
AND e_city NOT IN ('Mumbai','Delhi');

-- 40. List employees whose performance score is IN (2,4,5).
SELECT * FROM Employees WHERE performance IN (2,4,5);

-- 41. Display the second-highest salary employee.
SELECT * FROM Employees 
ORDER BY  e_salary DESC
LIMIT 1 OFFSET 1;

-- 42. Retrieve next 5 employees after the top 10 highest-paid.
SELECT * FROM Employees 
ORDER BY  e_salary DESC
LIMIT 5 OFFSET 10;

-- 43. Display the 4th to 8th youngest employees.
SELECT * FROM Employees 
ORDER BY  e_salary ASC
LIMIT 4 OFFSET 3;

-- 44. Display departments with employee count and avg age between 28 and 40.
SELECT e_dep, COUNT(*) , AVG(e_age)
FROM Employees
GROUP BY e_dep
HAVING AVG(e_age) BETWEEN 28 AND 40;

-- 45. Find the top 3 departments with highest total salary payout.
SELECT e_dep, SUM(e_salary) FROM Employees
GROUP BY e_dep
ORDER BY SUM(e_salary) DESC
LIMIT 3;

-- 46. Display cities having more than 3 distinct designations.
SELECT e_city,COUNT(DISTINCT e_designation) FROM Employees
GROUP BY e_city
HAVING COUNT(DISTINCT e_designation) > 3;


-- 47. For each department, display the highest-paid employee.
SELECT e_dep, MAX(e_salary) FROM Employees
GROUP BY e_dep;

-- 48. Display employees not in HR, aged 25–40, ordered by performance, first 7 results.
SELECT * FROM Employees 
WHERE e_dep IN ('HR') AND e_age BETWEEN 25 AND 40
ORDER BY performance 
LIMIT 7;


-- 49. Show the oldest 10 employees from selected cities, offset by 2.
SELECT * FROM Employees
WHERE e_city IN ('Pune','Mumbai')
ORDER BY e_age DESC
LIMIT 10 OFFSET 2;

-- 50. Display designations with total salary > 2,00,000 sorted descending.
SELECT e_designation, SUM(e_salary) FROM Employees
GROUP BY e_designation
HAVING SUM(e_salary) > 200000;
-- 25,30,37


-- SQL Clauses Assignment on EMP Database 2
-- 1. Display all distinct combinations of emp_city and emp_activity_status
SELECT DISTINCT e_city,activity_status FROM Employees;

-- 2. Display all unique department–performance pairs that exist in the company
SELECT DISTINCT e_dep,performance FROM Employees;

-- 3. Show all distinct values of designation vs city


-- 4. Display all employees ordered by emp_city ASC, emp_desg DESC, emp_sal ASC
SELECT * FROM Employees
ORDER BY e_city ASC,e_designation DESC,e_salary ASC;

-- 5. Display employees ordered alphabetically by emp_name
SELECT * FROM Employees
ORDER BY e_name ASC;

-- 6. Order employees by emp_activity_status, emp_performance, and emp_age
SELECT * 
FROM Employees
ORDER BY activity_status, performance, e_age;


-- 7. Display employees who joined after 2018 using BETWEEN, ordered by emp_date_of_joining DESC
SELECT * FROM Employees
WHERE e_doj BETWEEN '2018-01-01' AND '2025-12-31'
ORDER BY e_doj DESC;

-- 8. Group employees by emp_city and list the grouped rows
SELECT e_city,COUNT(*) FROM Employees
GROUP BY e_city;

-- 9. Group employees by emp_dept and emp_activity_status
SELECT e_dep,activity_status,COUNT(*) FROM Employees
GROUP BY e_dep,activity_status;

-- 10. Group employees based on emp_desg and display results ordered by emp_desg
SELECT e_designation,COUNT(*) FROM Employees
GROUP BY e_designation
ORDER BY e_designation;

-- 11. Group by emp_performance and order results by performance descending
SELECT performance, COUNT(*) FROM Employees
GROUP BY performance
ORDER BY performance DESC;

-- 12. Group employees by emp_city having emp_city IN ('Pune','Delhi','Bangalore')
SELECT e_city, COUNT(*) FROM Employees
GROUP BY e_city
HAVING e_city IN ('Pune','Delhi','Bangalore');


-- 13. Group employees by emp_activity_status having emp_activity_status <> 'Inactive'
SELECT activity_status, COUNT(*) FROM Employees
GROUP BY activity_status
HAVING activity_status <> 'Inactive';

-- 14. Group by emp_dept having emp_dept NOT BETWEEN 'A' AND 'H'
SELECT e_dep, COUNT(*) AS Department_count FROM Employees
WHERE e_dep NOT BETWEEN 'A' AND 'H'
GROUP BY e_dep;


-- 15. Group by emp_desg having emp_desg LIKE 'S%'
SELECT e_designation FROM Employees
GROUP BY e_designation
HAVING e_designation LIKE 'S%';


-- 16. Display employees whose emp_name lies alphabetically between 'A' and 'M'
SELECT * FROM Employees
WHERE e_name BETWEEN 'A' AND 'M';

-- 17. Show employees whose emp_city is not between 'Delhi' and 'Pune'
SELECT * FROM Employees
WHERE e_city NOT BETWEEN 'Delhi' AND 'Pune';

-- 18. Display employees whose emp_date_of_joining is between two given years
SELECT * FROM Employees
WHERE YEAR(e_doj) BETWEEN 2018 AND 2022;

-- 19. Show employees whose performance score is between 2 and 4
SELECT * FROM Employees
WHERE performance BETWEEN 2 AND 4;

-- 20. Show employees whose emp_city alphabetically not between 'Bangalore' and 'Mumbai'
SELECT * FROM Employees
WHERE e_city NOT BETWEEN 'Bangalore' AND 'Mumbai';


-- 21. List employees whose emp_desg IN ('Developer','Analyst','Consultant') and emp_city NOT IN ('Mumbai','Chennai')
SELECT * FROM Employees
WHERE e_designation IN ('Developer','Analyst','Consultant')
  AND e_city NOT IN ('Mumbai','Chennai');

-- 22. Display employees whose emp_activity_status NOT IN ('Active','On Leave')
SELECT * FROM Employees
WHERE activity_status NOT IN ('Active','On Leave');

-- 23. Show employees whose emp_dept IN ('IT','Finance','Operations') and emp_performance IN ('High','Medium')
SELECT * FROM Employees
WHERE e_designation IN ('IT','Finance','Operations')
  AND performance IN ('5','3');

-- 24. Show employees whose emp_city IN ('Delhi','Noida','Gurgaon') and emp_desg NOT IN ('Intern','Trainee')
SELECT * FROM Employees
WHERE e_city IN ('Delhi','Noida','Gurgaon')
  AND e_designation NOT IN ('Intern','Trainee');

-- 25. Display the first 12 employees ordered by emp_id
SELECT * FROM Employees
ORDER BY e_id
LIMIT 12;

-- 26. Display employees 11 to 20 using LIMIT and OFFSET
SELECT * FROM Employees
ORDER BY e_id
LIMIT 10 OFFSET 10;

-- 27. Show the first 10 employees from emp_city = 'Pune'
SELECT * FROM Employees
WHERE e_city = 'Pune'
ORDER BY e_id
LIMIT 10;

-- 28. Display the last 5 employees alphabetically by emp_name
SELECT * FROM Employees
ORDER BY e_name DESC
LIMIT 5;

-- 29. Fetch any 7 employees from emp_dept = 'Sales' after skipping first 3
SELECT * FROM Employees
WHERE e_dep = 'Sales'
ORDER BY e_id
LIMIT 7 OFFSET 3;

-- 30. Display employees ranked 5 to 10 by emp_age using ORDER BY, LIMIT, OFFSET
SELECT * FROM Employees
ORDER BY e_age
LIMIT 6 OFFSET 4;

-- SQL Clauses Assignment on EMP Database 3
-- 1. Show all distinct emp_city values present in the table.
SELECT DISTINCT e_city FROM Employees;

-- 2. Display all distinct emp_dept values.
SELECT DISTINCT e_dep FROM Employees;

-- 3. Display all distinct combinations of emp_dept and emp_city.
SELECT DISTINCT e_dep,e_city  FROM Employees;

-- 4. Display distinct emp_activity_status values.
SELECT DISTINCT activity_status FROM employees;

-- 5. Show all unique department–designation pairs.
SELECT DISTINCT e_dep,e_designation FROM employees;

-- 6. Display all employees ordered by emp_age ASC.
SELECT * FROM employees
ORDER BY e_age ASC;

-- 7. Display employees ordered by emp_sal DESC.
SELECT * FROM employees 
ORDER BY e_salary DESC;

-- 8. Display employees ordered by emp_city ASC, emp_sal DESC.
SELECT e_city,e_salary FROM employees
ORDER  BY e_city ASC,e_salary DESC;


-- 9. Sort employees by emp_activity_status ASC, emp_date_of_joining ASC.
SELECT activity_status,e_doj FROM employees
ORDER BY activity_status ASC, e_doj ASC;
-- 10. Display employees ordered by emp_desg ASC, emp_id DESC.
SELECT e_designation, e_id FROM employees
ORDER BY e_designation ASC,e_id  DESC;

-- 11. Display employees whose emp_age is between 25 and 45.
SELECT * FROM employees
WHERE e_age BETWEEN 25 AND 45;

-- 12. Display employees whose emp_sal is not between 30000 and 70000.
SELECT * FROM employees
WHERE e_salary BETWEEN 30000 AND 70000;

-- 13. Show employees who joined between '2015-01-01' and '2022-12-31'.
SELECT * FROM employees
WHERE e_doj BETWEEN '2015-01-01' AND '2022-12-31';

-- 14. Display employees whose emp_age is not between 30 and 50.
SELECT * FROM employees
WHERE  e_age NOT  BETWEEN 30 AND 50;

-- 15. Show employees whose date of joining is not between '2010-01-01' and '2020-12-31'.
SELECT * FROM employees 
WHERE e_doj NOT BETWEEN '2010-01-01' AND '2020-12-31';

-- 16. Display employees whose emp_city IN ('Pune','Mumbai','Hyderabad').
SELECT * FROM employees 
WHERE e_city IN('Pune','Mumbai','Hyderabad');

-- 17. Show employees whose emp_dept NOT IN ('HR','Admin').
SELECT * FROM employees 
WHERE e_dep IN('HR','Admin');

-- 18. Display employees whose emp_desg IN ('Manager','Developer','Analyst').
SELECT * FROM employees 
WHERE e_designation IN('Manager','Developer','Analyst');

-- 19. Show employees whose emp_activity_status NOT IN ('Active','On Leave').
SELECT * FROM employees 
WHERE activity_status NOT IN ('Active','On Leave');

-- 20. Display employees whose emp_performance IN ('High','Medium').
SELECT * FROM employees 
WHERE performance  IN ('5','3');

-- 21. Group employees by emp_city and display each group.
SELECT e_city, COUNT(*) FROM employees
GROUP BY e_city;

-- 22. Group employees by emp_dept.
SELECT e_dep, COUNT(*) FROM Employees
GROUP BY e_dep;

-- 23. Group employees by emp_activity_status.
SELECT activity_status, COUNT(*) FROM Employees
GROUP BY activity_status;

-- 24. Group employees by emp_desg.
SELECT e_designation, COUNT(*) AS total_employees FROM employees 
GROUP BY e_designation;

-- 25. Group employees by emp_performance and order the groups alphabetically.
SELECT performance, COUNT(*) FROM employees
GROUP BY performance
ORDER BY performance ASC;

-- 26. Group by emp_city having emp_city IN ('Delhi','Chennai','Pune').
SELECT e_city, COUNT(*) FROM Employees
GROUP BY e_city
HAVING e_city IN ('Delhi','Chennai','Pune');

-- 27. Group by emp_dept having emp_dept NOT IN ('HR','Support')
SELECT e_dep, COUNT(*) FROM Employees
GROUP BY e_dep
HAVING e_dep NOT IN ('HR','Support');


-- 28. Group by emp_activity_status having emp_activity_status IN ('Active','Working').
SELECT activity_status, COUNT(*) FROM Employees
GROUP BY activity_status
HAVING activity_status IN ('Active','Working');

-- 29. Group by emp_desg having emp_desg NOT IN ('Intern','Trainee').
SELECT e_designation, COUNT(*) FROM Employees
GROUP BY e_designation
HAVING e_designation NOT IN ('Intern','Trainee');

-- 30. Group by emp_performance having emp_performance IN ('High','Low').
SELECT performance, COUNT(*) FROM Employees
GROUP BY performance
HAVING performance IN ('5','1');

-- SQL Advanced Clauses & Aggregates Assignment – EMP Database 4
-- 1. Find the total salary expenditure of each department.
SELECT e_dep, SUM(e_salary) FROM employees
GROUP BY e_dep;

-- 2. Display the average age of employees in each city.
SELECT e_city, AVG(e_age) FROM employees
GROUP BY e_city;
-- 3. Show the maximum salary for each designation.
SELECT e_designation, MAX(e_salary) FROM employees
GROUP BY e_designation;

-- 4. Find the minimum salary for each department.
SELECT e_dep, MIN(e_salary) FROM employees
GROUP BY e_dep;

-- 5. Display the count of employees in each performance category.
SELECT performance, COUNT(*) FROM employees
GROUP BY performance;


-- 6. Show the average salary of employees grouped by emp_activity_status.
SELECT activity_status, AVG(e_salary) FROM employees
GROUP BY activity_status;


-- 7. Display each city with the sum of salaries of employees.
SELECT e_city, SUM(e_salary) FROM employees
GROUP BY e_city;

-- 8. For each department, show count of employees and max salary.
SELECT e_dep , COUNT(*), MAX(e_salary) FROM employees
GROUP BY e_dep;

-- 9. List the minimum and maximum ages of employees in every city.
SELECT e_city, MIN(e_age),MAX(e_age) FROM employees
GROUP BY e_city;

-- 10. Show total employees and total salary grouped by emp_desg.
SELECT e_designation, COUNT(*), SUM(e_salary) FROM employees
GROUP BY e_designation;

-- 11. Show departments having more than 10 employees.
SELECT e_dep, COUNT(*) FROM employees
GROUP BY e_dep
HAVING COUNT(*) > 10;

-- 12. List cities where average salary > 50,000.
SELECT e_city, AVG(e_salary) FROM employees
GROUP BY e_city
HAVING AVG(e_salary) > 50000;

-- 13. Display performance groups where maximum salary < 80,000.
SELECT performance, MAX(e_salary) FROM employees
GROUP BY performance
HAVING MAX(e_salary) < 80000;


-- 14. Show designations where average age BETWEEN 25 AND 40.
SELECT e_designation, AVG(e_age) FROM employees
GROUP BY  e_designation
HAVING AVG(e_age) BETWEEN 25 AND 40;

-- 15. Show activity statuses where count(*) NOT BETWEEN 2 AND 5.
SELECT activity_status, COUNT(*) FROM employees
GROUP BY activity_status
HAVING COUNT(*) NOT BETWEEN 2 AND 5;

-- 16. Show departments whose sum of salaries is more than 3,00,000.
SELECT e_dep, SUM(e_salary) FROM employees
GROUP BY e_dep
HAVING SUM(e_salary) > 300000;

-- 17. List cities where count of employees is NOT IN (2,5,8).
SELECT e_city, COUNT(*) FROM employees
GROUP by e_city
HAVING COUNT(*) NOT IN (2,5,8);

-- 18. Show performance ratings where min(sal) > 30,000.
SELECT performance, MIN(e_salary) FROM employees
GROUP BY performance
HAVING MIN(e_salary) > 30000;

-- 19. Show designations where max(age) NOT BETWEEN 30 AND 50.
SELECT e_designation, MAX(e_age) FROM employees
GROUP BY e_designation
HAVING MAX(e_age) NOT BETWEEN 30 AND 50;

-- 20. Show departments having avg(sal) BETWEEN 40,000 AND 70,000.
SELECT e_dep, AVG(e_salary) FROM employees
GROUP BY e_dep
HAVING AVG(e_salary)  BETWEEN 40000 AND 70000;

-- 21. Show departments sorted by total salary DESC.
SELECT e_dep, SUM(e_salary) FROM employees
GROUP BY e_dep
ORDER BY SUM(e_salary) DESC;


-- 22. Show designations sorted by average salary ASC.
SELECT  e_designation, AVG(e_salary) FROM employees
GROUP BY  e_designation
ORDER BY  AVG(e_salary) ASC;

-- 23. List cities sorted by count of employees DESC.
SELECT e_city, COUNT(*) FROM employees
GROUP BY e_city
ORDER BY COUNT(*) DESC;

-- 24. Display activity_status sorted by min(sal) ASC.
SELECT activity_status, MIN(e_salary) FROM employees
GROUP BY activity_status
ORDER BY MIN(e_salary) ASC;

-- 25. Display departments sorted by max(age) DESC.
SELECT e_dep, MAX(e_age) FROM employees
GROUP BY e_dep
ORDER BY MAX(e_age) DESC;

-- 26. List distinct cities with count of employees.
SELECT e_city, COUNT(*) FROM employees
GROUP BY e_city;

-- 27. Show distinct designations with their minimum salary.
SELECT  e_designation, MIN(e_salary) FROM employees
GROUP BY  e_designation;

-- 28. Show distinct performance categories with average salary.
SELECT  performance, AVG(e_salary) FROM employees
GROUP BY  performance;

-- 29. Show distinct departments with maximum age.
SELECT  e_dep, MAX(e_age) FROM employees
GROUP BY  e_dep;

-- 30. Show distinct activity statuses with sum of salaries.
SELECT activity_status, SUM(e_salary) FROM employees
GROUP BY activity_status;

-- 31. Show departments where avg(sal) BETWEEN 40,000 AND 60,000.
SELECT e_dep, AVG(e_salary) FROM employees
GROUP BY e_dep
HAVING AVG(e_salary) BETWEEN 40000 AND 60000;

-- 32. Show cities where count(*) NOT BETWEEN 5 AND 15.
SELECT e_city, COUNT(*) FROM employees
GROUP BY e_city 
HAVING COUNT(*) NOT BETWEEN 5 AND 15;

-- 33. Show performance ratings where min(age) BETWEEN 20 AND 30.
SELECT performance , MIN(e_age) FROM employees 
GROUP BY performance
HAVING MIN(e_age) BETWEEN  20 AND 30;

-- 34. Show designations where max(sal) NOT BETWEEN 50,000 AND 1,00,000.
SELECT  e_designation, MAX(e_salary) FROM employees
GROUP BY  e_designation
HAVING MIN(e_salary) NOT BETWEEN 50000 AND 100000;

-- 35. Show departments where sum(sal) BETWEEN 2,00,000 AND 5,00,000.
SELECT performance, SUM(e_salary) FROM employees
GROUP BY performance
HAVING SUM(e_salary) NOT IN (200000,300000);

-- 36. Show departments where count(*) IN (5,10,15).
SELECT e_dep, COUNT(*) FROM employees 
GROUP BY e_dep
HAVING COUNT(*) IN (5,10,15);

-- 37. Show cities where avg(age) NOT IN (25,30,35).
SELECT e_city, AVG(e_age) FROM employees
GROUP BY e_city 
HAVING AVG(e_age) NOT IN (25,30,35);

-- 38. Show designations where max(sal) IN (50000,70000,90000).
SELECT e_designation, MAX(e_salary) FROM employees
GROUP BY  e_designation
HAVING MAX(e_salary) IN (50000,70000,90000);


-- 39. Show performance categories where sum(sal) IN (200000,300000).
SELECT performance, SUM(e_salary) FROM employees
GROUP BY performance
HAVING SUM(e_salary) NOT IN (200000,300000);

-- 40. Show emp_activity_status where min(age) NOT IN (22,25).
SELECT activity_status, MIN(e_age) FROM employees
GROUP BY activity_status
HAVING MIN(e_age) NOT IN (22,25);

SELECT e_id,e_name,e_salary
FROM employees e
WHERE e_salary > (SELECT AVG(e_salary) FROM employees WHERE dept_id = e.dept_id);

SELECT dept_id,e_salary FROM employees
ORDER BY e_salary DESC
LIMIT 1 OFFSET 1;

SELECT DISTINCT e1.emp_id, e1.emp_name
FROM employees e1
JOIN employees e2 ON e1.project_id = e2.project_id
 AND e1.dept_id = e2.dept_id
 AND e1.e_designation<> e2.e_designation
 AND e1.e_id <> e2.e_id;
