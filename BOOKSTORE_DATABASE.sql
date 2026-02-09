-- SQL ASSIGNMENT - 2
SHOW DATABASES;
USE bookstore;
SHOW TABLES;
CREATE TABLE Books(
book_id int primary key,  
title varchar(50),
price decimal(10,2),
publication_date date,
author_id int,
author_name varchar(20));
INSERT INTO Books VALUES (1, 'Book 1', 12.99, '2020-01-15', 101, 'Author A');
INSERT INTO Books VALUES (2, 'Book 2', 25.50, '2020-03-10', 102, 'Author B');
INSERT INTO Books VALUES (3, 'Book 3', 18.75, '2020-02-20', 103, 'Author C');
INSERT INTO Books VALUES (4, 'Book 4', 30.00, '2020-04-12', 104, 'Author D');
INSERT INTO Books VALUES (5, 'Book 5', 10.50, '2020-05-05', 105, 'Author E');
INSERT INTO Books VALUES (6, 'Book 6', 22.99, '2020-06-18', 106, 'Author F');
INSERT INTO Books VALUES (7, 'Book 7', 14.25, '2020-07-01', 107, 'Author G');
INSERT INTO Books VALUES (8, 'Book 8', 19.99, '2020-08-10', 108, 'Author H');
INSERT INTO Books VALUES (9, 'Book 9', 35.00, '2020-09-15', 109, 'Author I');
INSERT INTO Books VALUES (10, 'Book 10', 11.75, '2020-10-20', 110, 'Author J');
INSERT INTO Books VALUES (11, 'Book 11', 28.40, '2020-11-25', 111, 'Author K');
INSERT INTO Books VALUES (12, 'Book 12', 16.60, '2020-12-30', 112, 'Author L');
INSERT INTO Books VALUES (13, 'Book 13', 24.99, '2021-01-10', 113, 'Author M');
INSERT INTO Books VALUES (14, 'Book 14', 13.50, '2021-02-14', 114, 'Author N');
INSERT INTO Books VALUES (15, 'Book 15', 20.00, '2021-03-01', 115, 'Author O');
INSERT INTO Books VALUES (16, 'Book 16', 27.75, '2021-04-05', 116, 'Author P');
INSERT INTO Books VALUES (17, 'Book 17', 15.25, '2021-05-12', 117, 'Author Q');
INSERT INTO Books VALUES (18, 'Book 18', 32.10, '2021-06-18', 118, 'Author R');
INSERT INTO Books VALUES (19, 'Book 19', 21.99, '2021-07-22', 119, 'Author S');
INSERT INTO Books VALUES (20, 'Book 20', 9.99, '2021-08-30', 120, 'Author T');

CREATE TABLE Authors(
author_id int primary key, 
author_name varchar(30), 
book_id int,
book_name varchar(30));

INSERT INTO Authors VALUES (101, 'Author A', 1, 'Book 1');
INSERT INTO Authors VALUES (102, 'Author B', 2, 'Book 2');
INSERT INTO Authors VALUES (103, 'Author C', 3, 'Book 3');
INSERT INTO Authors VALUES (104, 'Author D', 4, 'Book 4');
INSERT INTO Authors VALUES (105, 'Author E', 5, 'Book 5');
INSERT INTO Authors VALUES (106, 'Author F', 6, 'Book 6');
INSERT INTO Authors VALUES (107, 'Author G', 7, 'Book 7');
INSERT INTO Authors VALUES (108, 'Author H', 8, 'Book 8');
INSERT INTO Authors VALUES (109, 'Author I', 9, 'Book 9');
INSERT INTO Authors VALUES (110, 'Author J', 10, 'Book 10');
INSERT INTO Authors VALUES (111, 'Author K', 11, 'Book 11');
INSERT INTO Authors VALUES (112, 'Author L', 12, 'Book 12');
INSERT INTO Authors VALUES (113, 'Author M', 13, 'Book 13');
INSERT INTO Authors VALUES (114, 'Author N', 14, 'Book 14');
INSERT INTO Authors VALUES (115, 'Author O', 15, 'Book 15');
INSERT INTO Authors VALUES (116, 'Author P', 16, 'Book 16');
INSERT INTO Authors VALUES (117, 'Author Q', 17, 'Book 17');
INSERT INTO Authors VALUES (118, 'Author R', 18, 'Book 18');
INSERT INTO Authors VALUES (119, 'Author S', 19, 'Book 19');
INSERT INTO Authors VALUES (120, 'Author T', 20, 'Book 20');

CREATE TABLE Orders(
order_id int primary key,
book_id int,
order_date date, 
quantity int,
author_id int);

INSERT INTO Orders VALUES (1, 1, '2020-02-01', 2, 101);
INSERT INTO Orders VALUES (2, 2, '2020-04-05', 1, 102);
INSERT INTO Orders VALUES (3, 3, '2020-05-10', 3, 103);
INSERT INTO Orders VALUES (4, 4, '2020-06-15', 2, 104);
INSERT INTO Orders VALUES (5, 5, '2020-07-20', 4, 105);
INSERT INTO Orders VALUES (6, 6, '2020-08-25', 1, 106);
INSERT INTO Orders VALUES (7, 7, '2020-09-30', 2, 107);
INSERT INTO Orders VALUES (8, 8, '2020-10-05', 5, 108);
INSERT INTO Orders VALUES (9, 9, '2020-11-10', 3, 109);
INSERT INTO Orders VALUES (10, 10, '2020-12-15', 2, 110);
INSERT INTO Orders VALUES (11, 11, '2021-01-20', 1, 111);
INSERT INTO Orders VALUES (12, 12, '2021-02-25', 2, 112);
INSERT INTO Orders VALUES (13, 13, '2021-03-30', 4, 113);
INSERT INTO Orders VALUES (14, 14, '2021-04-05', 3, 114);
INSERT INTO Orders VALUES (15, 15, '2021-05-10', 2, 115);
INSERT INTO Orders VALUES (16, 16, '2021-06-15', 1, 116);
INSERT INTO Orders VALUES (17, 17, '2021-07-20', 5, 117);
INSERT INTO Orders VALUES (18, 18, '2021-08-25', 2, 118);
INSERT INTO Orders VALUES (19, 19, '2021-09-30', 3, 119);
INSERT INTO Orders VALUES (20, 20, '2021-10-05', 4, 120);

-- Q1. Write a SELECT statement to retrieve all books from the Books table 
SELECT * FROM Books;

-- Q2. Write a SELECT statement to retrieve books with a price greater than 20 
SELECT * FROM Books WHERE price > 20;

-- Q3. Write a SELECT statement to retrieve books with a publication date between '2020-01-01' and '2020-06-30'.
SELECT * FROM Books WHERE publication_date BETWEEN '2020-01-01' AND '2020-06-30';

-- Q4. Write a SELECT statement to retrieve orders with a quantity greater than or equal to 2.
SELECT * FROM Orders WHERE quantity >= 2;

-- Q5. Write an UPDATE statement to update the price of a book with a book_id of 1
UPDATE Books  SET price = 20.33 WHERE book_id = 1;

-- Q6. Write a DELETE statement to delete an order with an order_id of 5.
DELETE FROM Orders WHERE Order_id = 5;

-- Q7. Write a SELECT statement to retrieve books with a price less than 15.
SELECT * FROM Books WHERE price < 15;

-- Q8. Write a SELECT statement to retrieve orders with an order date greater than or equal to '2020-03-01'.
SELECT * FROM Orders WHERE  order_date >= '2020-03-01';

-- Q9. Write a SELECT statement to retrieve books with a title not equal to 'Book 1'.
SELECT * FROM Books  WHERE title != 'Book 1';

-- Q10. Write a SELECT statement to retrieve authors with an author_id less than or equal to 2.
SELECT * FROM Authors WHERE author_id <= 2;

-- Q11. Write a SELECT statement to retrieve books with a price between 10 and 20.
SELECT * FROM Books WHERE price BETWEEN 10 AND 20;

-- Q12. Write a SELECT statement to retrieve orders with a quantity in (1, 2, 3).
SELECT * FROM Orders WHERE  quantity IN (1,2,3);

-- Q13. Write a SELECT statement to retrieve books with a publication date like '%2020%'.
SELECT * FROM Books WHERE publication_date LIKE '%%2020%%';

-- Q14. Write a SELECT statement to retrieve authors with an author_name starting with 'A'.
SELECT * FROM Authors WHERE author_name LIKE 'A%';

-- Q15. . Write an INSERT statement to add a new book to the Books table.
INSERT INTO Books VALUES (21, 'Book 21', 30.00, '2021-01-01', 121, 'Author Y');

-- Q16. Write an UPDATE statement to update the quantity of an order in the Orders table
UPDATE Orders SET quantity = 5 WHERE  order_id = 3;

-- Q17. Write a DELETE statement to delete a book from the Books table
DELETE FROM Books WHERE book_id = 2;

-- Q18. Write a SQL query to retrieve the total number of books in the Books table.
SELECT COUNT(*) FROM Books;
-- Q19. Write a SQL query to retrieve the average price of books in the Books table.
SELECT AVG(price) FROM Books;
-- Q20. Write a SQL query to retrieve the maximum quantity of orders in the Orders table
SELECT MAX(quantity) FROM Orders;

-- Q21. Write a SQL query to retrieve the minimum publication date of books in the Books table.
SELECT MIN(publication_date) FROM Books;

-- Q22. Write a GRANT statement to grant SELECT privwilege to bookstore_user on the Orders table.
CREATE USER 'bookstore_user'@'localhost' IDENTIFIED BY 'bookks123';
GRANT SELECT ON Orders TO 'bookstore_user'@'localhost';
REVOKE SELECT ON Orders FROM 'bookstore_user'@'localhost';

-- Q23. Write a REVOKE statement to revoke INSERT privilege from bookstore_user on the Books table.
GRANT INSERT ON Books TO 'bookstore_user'@'localhost';
REVOKE INSERT ON BOOKS FROM 'bookstore_user'@'localhost';