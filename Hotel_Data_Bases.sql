-- SQL ASSIGNMENT - 3

-- Q1. Create a database named HotelDB.
CREATE DATABASE HotelDB;

SHOW DATABASES;
USE HotelDB;

-- Q2. Create a table Rooms with columns: room_id, room_type, price_per_night, status.
CREATE TABLE Rooms(room_id int primary key,room_type varchar(30),price_per_night decimal(10,2),status varchar(20));

SELECT * FROM Rooms;

-- Q3. Create a table Guests with columns: guest_id, full_name, phone, email.
CREATE TABLE Guests(guest_id INT PRIMARY KEY, full_name VARCHAR(30), phone INT, email  VARCHAR(50));

SELECT * FROM Guests;

-- Q4. Create a table Bookings with columns: booking_id, guest_id, room_id, check_in_date, check_out_date, total_amount.
CREATE TABLE Bookings(
booking_id INT PRIMARY KEY, 
guest_id INT, 
room_id INT,
check_in_date DATE, 
check_out_date DATE, 
total_amount DECIMAL(10,2));

SELECT * FROM Bookings;
SHOW TABLES;

-- Q5. . Add a new column payment_status to Bookings.
ALTER TABLE Bookings ADD payment_status VARCHAR(30);

-- Q6. Modify the size of column status in Rooms
ALTER TABLE Room MODIFY COLUMN status varchar(30);

-- Q7. Remove the column phone from Guests.
ALTER TABLE Guests DROP COLUMN phone;

-- Q8. Create a table Staff with columns staff_id, staff_name, role.
CREATE TABLE Staff(staff_id INT PRIMARY KEY, staff_name VARCHAR(30), role VARCHAR(10));

-- Q9. Drop the table Staff
DROP TABLE Staff;

-- Q10. Insert 5 sample records into Rooms.
INSERT INTO Rooms(room_id,room_type,price_per_night,status)
VALUES
(101, 'Deluxe', 3000, 'Available'),
(102, 'Suite', 8000, 'Available'),
(103, 'Standard', 2000, 'Occupied'),
(104, 'Deluxe', 3200, 'Available'),
(105, 'Suite', 8500, 'Occupied');

-- Q11. . Insert 5 sample records into Guests
INSERT INTO Guests(guest_id,full_name,email)
VALUES
(1, 'Amit Sharma', 'amit@gmail.com'),
(2, 'Priya Mehta', 'priya@gmail.com'),
(3, 'Rohan Desai', 'rohan@gmail.com'),
(4, 'Sneha Kulkarni', 'sneha@gmail.com'),
(5, 'Vikas Patil', 'vikas@gamil.com');

-- Q12. Insert 5 sample records into Bookings.
INSERT INTO Bookings (booking_id, guest_id, room_id, check_in_date, check_out_date, total_amount, payment_status)
VALUES
(111, 1, 101, '2025-11-01', '2025-11-05', 12000, 'PENDING'),
(222, 2, 102, '2025-11-10', '2025-11-12', 16000, 'PAID'),
(333, 3, 103, '2025-11-15', '2025-11-18', 6000, 'PENDING'),
(444, 4, 104, '2023-11-20', '2025-11-22', 6400, 'PENDING'),
(555, 5, 105, '2025-11-25', '2025-11-28', 25500, 'PAID');

-- Q13. Update status of all rooms where room_type = 'Deluxe'.
UPDATE Rooms
SET status = 'Occupied'
WHERE room_type = 'Deluxe';

-- Q14. Increase price_per_night of Suite rooms by 500.
UPDATE Rooms
SET price_per_night = price_per_night + 500
WHERE room_type = 'Suite';

-- Q15. Delete the guest record where guest_id = 3
DELETE  FROM Guests WHERE guest_id = 3;

-- Q16. Update payment_status to 'PAID' for booking_id = 2
UPDATE Bookings
SET payment_status = 'PAID'
WHERE booking_id = 222;

-- Q17. Select all rooms where status = 'Available'.
SELECT * FROM Rooms WHERE status ='Available';

-- Q18. Select guest details where full_name = 'Amit Sharma'.
SELECT * FROM Guests WHERE full_name = 'Amit Sharma';

-- Q19. Select all bookings where payment_status = 'Pending'.
SELECT * FROM Bookings WHERE payment_status = "Pending";

-- Q20. Select room details where room_type = 'Suite
SELECT * FROM Rooms WHERE room_type = 'Suite';

-- Q21. Fetch guest details where email = 'amit@gmail.com'.
SELECT * FROM Guests WHERE email = 'amit@gmail.com';

-- Q22. Select bookings where total_amount > 8000.
SELECT * FROM  bookings WHERE  total_amount > 8000;

-- Q23. Select rooms where price_per_night < 4000.
SELECT * FROM Rooms WHERE price_per_night < 4000;

-- Q24. Display bookings where room_id = 101.
SELECT * FROM bookings WHERE room_id = 101;

-- Q25. Select guests where guest_id > 2.
SELECT * FROM Guests WHERE guest_id > 2;

-- Q26. Select rooms where price_per_night = 5000.
SELECT * FROM Rooms WHERE price_per_night = 5000;

-- Q27. Select bookings where check_in_date = '2024-02-01'
SELECT * FROM bookings WHERE check_in_date = '2024-02-01';

-- Q28. Select guests where full_name = 'Rohan Desai'.
SELECT * FROM Guests WHERE full_name = 'Rohan Desai';

-- Q29. Create a user hotel_user with password "hotel123".
CREATE USER 'hotel_user'@'localhost' IDENTIFIED BY 'hotel123';

-- Q30. Grant SELECT permission on all tables to hotel_user.
GRANT SELECT ON HotelDB.* TO 'hotel_user'@'localhost';

-- Q31. Revoke SELECT permission from hotel_user.
REVOKE SELECT ON HotelDB.* FROM 'hotel_user'@'localhost';

-- Q32. Begin a transaction and update price of all rooms to 4500, then ROLLBACK.
START TRANSACTION;
UPDATE Rooms SET price_per_night = 4500;
ROLLBACK;

-- Q33. Begin a transaction and insert a new guest record, then COMMIT.
START TRANSACTION;
INSERT INTO Guests(guest_id,full_name,email) VALUE(7, 'Abijeet Yenkar','Abijeet@gmail.com');
COMMIT;

-- Q34. Delete all records in Bookings inside a transaction, then ROLLBACK.
START TRANSACTION;
DELETE FROM bookings;
ROLLBACK;

-- Q35. Select rooms where status = 'Occupied'.
SELECT * FROM Rooms WHERE status = 'Occupied';

-- Q36. Select bookings where total_amount >= 10000.
SELECT * FROM bookings WHERE total_amount >= 10000;

-- Q37. Select guests where email = 'xyz@yahoo.com'.
SELECT * FROM Guests WHERE email = 'Abijeet@gmail.com'; 

-- Q38. Select rooms where room_type = 'Deluxe'.
SELECT * FROM Rooms WHERE room_type = 'Deluxe';

-- Q39. Select bookings where booking_id = 1.
SELECT * FROM bookings WHERE booking_id = 111;

-- Q40. Select guests where guest_id = 5.
SELECT * FROM Guests WHERE guest_id = 5;

-- HotelDB Joins Assignment
-- Assumptions:
-- Guests(guest_id, full_name, email, city)
-- Rooms(room_id, room_type, price_per_night, status)
-- Bookings(booking_id, guest_id, room_id, check_in_date, check_out_date, total_amount, payment_status, staff_id)  -- staff_id optional
-- Staff(staff_id, staff_name, role)  -- optional, used where required

-- 1. Display all bookings with the guest's full name using INNER JOIN.
SELECT b.*, g.full_name
FROM Bookings b
INNER JOIN Guests g ON b.guest_id = g.guest_id;

-- 2. Display room details along with booking dates for all existing bookings.
SELECT b.booking_id, r.room_id, r.room_type, r.price_per_night, b.check_in_date, b.check_out_date
FROM Bookings b
INNER JOIN Rooms r ON b.room_id = r.room_id;

-- 3. List all guests and their bookings including guests who never booked using LEFT JOIN.
SELECT g.guest_id, g.full_name, b.booking_id, b.check_in_date, b.check_out_date
FROM Guests g
LEFT JOIN Bookings b ON g.guest_id = b.guest_id;

-- 4. Show all rooms and their bookings including rooms that have never been booked.
SELECT r.room_id, r.room_type, b.booking_id, b.check_in_date, b.check_out_date
FROM Rooms r
LEFT JOIN Bookings b ON r.room_id = b.room_id;

-- 5. Retrieve all bookings along with room_type and price_per_night.
SELECT b.*, r.room_type, r.price_per_night
FROM Bookings b
JOIN Rooms r ON b.room_id = r.room_id;

-- 6. Display guests whose bookings have payment_status = 'Paid'.
SELECT DISTINCT g.guest_id, g.full_name, b.booking_id, b.payment_status
FROM Guests g
JOIN Bookings b ON g.guest_id = b.guest_id
WHERE UPPER(b.payment_status) = 'PAID';

-- 7. Show all guests who do not have a booking using LEFT JOIN and checking for NULL.
SELECT g.guest_id, g.full_name
FROM Guests g
LEFT JOIN Bookings b ON g.guest_id = b.guest_id
WHERE b.booking_id IS NULL;

-- 8. List all booked room_ids and the corresponding guest city.
SELECT DISTINCT b.room_id, g.city
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
WHERE g.city IS NOT NULL;

-- 9. Retrieve booking_id, guest_name, room_type, and total_amount in a single query.
SELECT b.booking_id, g.full_name AS guest_name, r.room_type, b.total_amount
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id;

-- 10. Show guests with the number of bookings they made.
SELECT g.guest_id, g.full_name, COUNT(b.booking_id) AS bookings_count
FROM Guests g
LEFT JOIN Bookings b ON g.guest_id = b.guest_id
GROUP BY g.guest_id, g.full_name;

-- 11. Display each room and the total amount earned from that room through bookings.
SELECT r.room_id, r.room_type, COALESCE(SUM(b.total_amount),0) AS total_earned
FROM Rooms r
LEFT JOIN Bookings b ON r.room_id = b.room_id
GROUP BY r.room_id, r.room_type;

-- 12. Show all bookings and their payment details.
SELECT b.booking_id, b.total_amount, b.payment_status
FROM Bookings b;

-- 13. Show all bookings even if payment details are missing.
-- (Assumes payment details might be in a separate Payments table; if payments are in Bookings, this equals Q12)
-- If separate Payments(pay_id, booking_id, pay_date, amount, method), then:
SELECT b.booking_id, p.pay_id, p.pay_date, p.amount
FROM Bookings b
LEFT JOIN Payments p ON b.booking_id = p.booking_id;

-- 14. Retrieve all payments along with guest names.
-- (Assumes Payments table exists with booking_id FK)
SELECT p.*, g.full_name
FROM Payments p
JOIN Bookings b ON p.booking_id = b.booking_id
JOIN Guests g ON b.guest_id = g.guest_id;

-- 15. Display all staff members and bookings they managed.
-- (Assumes Bookings.staff_id exists)
SELECT s.staff_id, s.staff_name, b.booking_id, b.check_in_date
FROM Staff s
LEFT JOIN Bookings b ON s.staff_id = b.staff_id;

-- 16. Show all bookings where check_in_date and room status details are available.
SELECT b.booking_id, b.check_in_date, r.room_id, r.status
FROM Bookings b
JOIN Rooms r ON b.room_id = r.room_id
WHERE b.check_in_date IS NOT NULL AND r.status IS NOT NULL;

-- 17. List guests along with room prices for all rooms they booked.
SELECT g.guest_id, g.full_name, r.room_id, r.price_per_night
FROM Guests g
JOIN Bookings b ON g.guest_id = b.guest_id
JOIN Rooms r ON b.room_id = r.room_id;

-- 18. Display each guest and their latest booking date.
SELECT g.guest_id, g.full_name, MAX(b.check_in_date) AS latest_check_in
FROM Guests g
LEFT JOIN Bookings b ON g.guest_id = b.guest_id
GROUP BY g.guest_id, g.full_name;

-- 19. Show rooms along with the count of bookings made for each.
SELECT r.room_id, r.room_type, COUNT(b.booking_id) AS bookings_count
FROM Rooms r
LEFT JOIN Bookings b ON r.room_id = b.room_id
GROUP BY r.room_id, r.room_type;

-- 20. Display guest names and room types for bookings greater than 8000.
SELECT g.full_name, r.room_type, b.total_amount
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
WHERE b.total_amount > 8000;

-- 21. Show all room types booked by guests from a particular city.
-- (Replace 'Mumbai' with required city)
SELECT DISTINCT r.room_type
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
WHERE g.city = 'Mumbai';

-- 22. Display room IDs and guest names for stays between specific dates.
-- (Replace '2025-11-01' and '2025-11-30' as needed)
SELECT r.room_id, g.full_name, b.check_in_date, b.check_out_date
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
WHERE b.check_in_date >= '2025-11-01' AND b.check_out_date <= '2025-11-30';

-- 23. Show the booking details along with the staff member who handled them.
-- (Assumes Bookings.staff_id)
SELECT b.booking_id, g.full_name, r.room_type, s.staff_name
FROM Bookings b
LEFT JOIN Guests g ON b.guest_id = g.guest_id
LEFT JOIN Rooms r ON b.room_id = r.room_id
LEFT JOIN Staff s ON b.staff_id = s.staff_id;

-- 24. Retrieve all guests who booked rooms priced above 5000.
SELECT DISTINCT g.guest_id, g.full_name
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
WHERE r.price_per_night > 5000;

-- 25. Display all guests who booked Deluxe or Suite rooms.
SELECT DISTINCT g.guest_id, g.full_name, r.room_type
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
WHERE r.room_type IN ('Deluxe','Suite');

-- 26. Show guests and rooms sorted by price_per_night.
SELECT g.full_name, r.room_id, r.room_type, r.price_per_night
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
ORDER BY r.price_per_night DESC;

-- 27. Retrieve bookings with room price not between 2000 and 5000.
SELECT b.booking_id, r.room_id, r.price_per_night
FROM Bookings b
JOIN Rooms r ON b.room_id = r.room_id
WHERE r.price_per_night NOT BETWEEN 2000 AND 5000;

-- 28. List guests and their room details for bookings with status = 'Confirmed'.
-- (Assumes Bookings has a booking_status column; if not, use payment_status or Rooms.status as applicable)
SELECT g.full_name, r.room_id, r.room_type, b.booking_id
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
WHERE UPPER(b.booking_status) = 'CONFIRMED';

-- 29. Show room types and total bookings grouped by each type.
SELECT r.room_type, COUNT(b.booking_id) AS total_bookings
FROM Rooms r
LEFT JOIN Bookings b ON r.room_id = b.room_id
GROUP BY r.room_type;

-- 30. Retrieve total revenue generated per guest.
SELECT g.guest_id, g.full_name, COALESCE(SUM(b.total_amount),0) AS total_revenue
FROM Guests g
LEFT JOIN Bookings b ON g.guest_id = b.guest_id
GROUP BY g.guest_id, g.full_name;

-- 31. Show guests who booked more than one type of room.
SELECT g.guest_id, g.full_name
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
GROUP BY g.guest_id, g.full_name
HAVING COUNT(DISTINCT r.room_type) > 1;

-- 32. Display all rooms and their booking count even if zero.
SELECT r.room_id, r.room_type, COUNT(b.booking_id) AS booking_count
FROM Rooms r
LEFT JOIN Bookings b ON r.room_id = b.room_id
GROUP BY r.room_id, r.room_type;

-- 33. Show all bookings where the guest's email ends with gmail.com.
SELECT b.booking_id, g.full_name, g.email
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
WHERE LOWER(g.email) LIKE '%@gmail.com';

-- 34. Display the top 5 highest paying bookings with guest name and room type.
SELECT b.booking_id, g.full_name, r.room_type, b.total_amount
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
ORDER BY b.total_amount DESC
LIMIT 5;

-- 35. Show guests who booked a room but have not yet paid.
SELECT DISTINCT g.guest_id, g.full_name, b.booking_id, b.payment_status
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
WHERE UPPER(b.payment_status) IN ('PENDING','UNPAID','NOT PAID') OR b.payment_status IS NULL;

-- 36. Retrieve the list of rooms along with the earliest and latest booking date.
SELECT r.room_id, r.room_type, MIN(b.check_in_date) AS earliest_booking, MAX(b.check_in_date) AS latest_booking
FROM Rooms r
LEFT JOIN Bookings b ON r.room_id = b.room_id
GROUP BY r.room_id, r.room_type;

-- 37. List all bookings along with guest city and room status.
SELECT b.booking_id, g.full_name, g.city, r.room_id, r.status
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id;

-- 38. Show all guests who stayed in rooms priced between 3000 and 7000.
SELECT DISTINCT g.guest_id, g.full_name, r.price_per_night
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
WHERE r.price_per_night BETWEEN 3000 AND 7000;

-- 39. Display all booking IDs with their corresponding guest and payment dates.
-- (Assumes Payments(pay_id, booking_id, pay_date, amount))
SELECT b.booking_id, g.full_name, p.pay_date
FROM Bookings b
LEFT JOIN Guests g ON b.guest_id = g.guest_id
LEFT JOIN Payments p ON b.booking_id = p.booking_id;

-- 40. Show a combined list of guest name, room type, check-in date, check-out date, total amount, and payment_status.
SELECT g.full_name, r.room_type, b.check_in_date, b.check_out_date, b.total_amount, b.payment_status
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id;

-- 1. Convert full_name into UPPER case
SELECT UPPER(full_name) FROM Guests;

-- 2. Convert full_name into lower case
SELECT LOWER(full_name) FROM Guests;

-- 3. Show full_name with its total character length
SELECT full_name , LENGTH(full_name) FROM guests;

-- 4. Remove extra spaces around full_name using TRIM
SELECT TRIM(full_name) FROM guests;

-- 5. Extract first 5 characters from room_type
SELECT LEFT(room_type,5) FROM Rooms;

-- 6. Combine full_name and city into a single string using CONCAT
SELECT CONCAT(full_name,' ',city) FROM emp;

-- 7. Replace the word "gmail" with "email" inside email column
SELECT REPLACE(email,'gmail','email') FROM Guests;

-- 8. Extract YEAR part from check_in_date
SELECT YEAR(check_in_date) FROM Bookings;

-- 9. Extract MONTH from check_out_date
SELECT MONTH(check_in_date) FROM Bookings;

-- 10. Extract DAY from check_in_date
SELECT DAY(check_in_date) FROM Bookings;

-- 11. Find nights stayed = check_out_date - check_in_date
SELECT DATEDIFF(check_out_date,check_in_date) FROM Bookings;

-- 12. Display week number from check_in_date
SELECT WEEK(check_in_date) FROM Bookings;

-- 13. Format check_in_date as DD/MM/YYYY.
SELECT DATE_FORMAT(check_in_date,'%d/%m/%Y') FROM Bookings; 

-- 14. Calculate number of months between check_in_date & check_out_date
SELECT TIMESTAMPDIFF(MONTH, check_in_date, check_out_date) AS months_stayed FROM Bookings;

-- 15. Round price_per_night to nearest whole number
SELECT room_id, ROUND(price_per_night) AS rounded_price FROM Rooms;

-- 16. Round total_amount upward using CEILING
SELECT booking_id, CEILING(total_amount) AS amount_up FROM Bookings;

-- 17. Round total_amount downward using FLOOR
SELECT booking_id, FLOOR(total_amount) AS amount_down FROM Bookings;

-- 18. Find absolute difference between price_per_night and 5000
SELECT room_id, ABS(price_per_night - 5000) AS price_diff FROM Rooms;

-- 19. Get remainder of total_amount divided by 1000 using MOD
SELECT booking_id, MOD(total_amount, 1000) AS remainder FROM Bookings;

-- 20. Increase total_amount by 18% GST = total_amount*1.18
SELECT booking_id, total_amount, total_amount * 1.18 AS amount_with_gst FROM Bookings;

-- 21. Get highest price_per_night value
SELECT MAX(price_per_night) AS highest_price FROM Rooms;

-- 22. Get lowest total_amount value
SELECT MIN(total_amount) AS lowest_amount FROM Bookings;

-- 23. Calculate total booking revenue (SUM total_amount)
SELECT SUM(total_amount) AS total_revenue FROM Bookings;

-- 24. Find average price_per_night
SELECT AVG(price_per_night) AS avg_price FROM Rooms;

-- 25. Count total bookings
SELECT COUNT(*) AS total_bookings FROM Bookings;

-- 26. Count unique payment_status entries
SELECT COUNT(DISTINCT payment_status) AS unique_payment_status FROM Bookings;

-- 27. Count number of guests city-wise using GROUP BY
SELECT city, COUNT(*) AS total_guests FROM Guests GROUP BY city;

-- 28. Get average revenue room-wise using GROUP BY room_id
SELECT room_id, AVG(total_amount) AS avg_revenue FROM Bookings GROUP BY room_id;

-- 29. Find ASCII code of first letter of room_type
SELECT room_type, ASCII(LEFT(room_type,1)) AS ascii_code FROM Rooms;

-- 30. Display length of each email
SELECT email, LENGTH(email) AS email_length FROM Guests;

-- 31. Capitalize first letter of room_type, rest lowercase
SELECT CONCAT(UCASE(LEFT(room_type,1)), LCASE(SUBSTRING(room_type,2))) AS formatted_room_type FROM Rooms;

-- 32. Add 3 days to check_in_date
SELECT DATE_ADD(check_in_date, INTERVAL 3 DAY) AS new_date FROM Bookings;

-- 33. Add 1 month to check_in_date
SELECT DATE_ADD(check_in_date, INTERVAL 1 MONTH) AS new_date FROM Bookings;

-- 34. Add interval of 5 days to check_in_date
SELECT DATE_ADD(check_in_date, INTERVAL 5 DAY) AS new_date FROM Bookings;

-- 35. Convert price_per_night to integer using CAST
SELECT room_id, CAST(price_per_night AS UNSIGNED) AS int_price FROM Rooms;

-- 36. Show total_amount with ₹ prefixed before the value
SELECT booking_id, CONCAT('₹', total_amount) AS formatted_amount FROM Bookings;