INSERT INTO Users (name, email, password) VALUES
('Romil', 'Romil@example.com', 'password1'),
('Meet', 'Meet@example.com', 'password2'),
('Manthan', 'Manthan@example.com', 'password3'),
('Ankit', 'Ankiit@example.com', 'password4'),
('Arth', 'Arth@example.com', 'password5'),
('Navay', 'Navay@example.com', 'password6'),
('Rushit', 'Rushit@example.com', 'password7'),
('Jaimain', 'Jaimain@example.com', 'password8'),
('Sharad', 'Sharad@example.com', 'password9'),
('Sanajy', 'Sanjay@example.com', 'password10');

INSERT INTO Products (name, category, price, stock) VALUES
('T-Shirt', 'Clothing', 19.99, 0),
('Jeans', 'Clothing', 39.99, 30),
('Sneakers', 'Footwear', 49.99, 20),
('Hat', 'Accessories', 14.99, 40),
('Jacket', 'Clothing', 79.99, 10),
('Scarf', 'Accessories', 9.99, 25),
('Boots', 'Footwear', 89.99, 15),
('Socks', 'Clothing', 4.99, 60),
('Sweater', 'Clothing', 59.99, 18),
('Watch', 'Accessories', 199.99, 5);

INSERT INTO Orders (user_id, total_amount) VALUES
(1, 39.99), 
(2, 79.99), 
(3, 19.99), 
(4, 49.99), 
(5, 14.99),
(6, 9.99), 
(7, 89.99),
 (8, 4.99), 
 (9, 59.99), 
 (10, 199.99);
 
 INSERT INTO OrderDetails (order_id, product_id, quantity, price) VALUES
(1, 2, 1, 39.99),
(2, 5, 1, 79.99),
(3, 1, 1, 19.99),
(4, 3, 1, 49.99),
(5, 4, 1, 14.99),
(6, 6, 1, 9.99),
(7, 7, 1, 89.99),
(8, 8, 1, 4.99),
(9, 9, 1, 59.99),
(10, 10, 1, 199.99);

INSERT INTO Payments (order_id, amount_paid, payment_method, payment_status, payment_date)
VALUES 
(1, 120.00, 'Credit Card', 'Paid', NOW()),
(2, 89.99, 'PayPal', 'Paid', NOW()),
(3, 250.50, 'Debit Card', 'Pending', NOW()),
(4, 75.25, 'UPI', 'Failed', NOW()),
(5, 180.00, 'Credit Card', 'Paid', NOW()),
(6, 95.00, 'Net Banking', 'Paid', NOW()),
(7, 310.10, 'PayPal', 'Refunded', NOW()),
(8, 150.00, 'Credit Card', 'Paid', NOW()),
(9, 49.99, 'UPI', 'Pending', NOW()),
(10, 99.90, 'Debit Card', 'Paid', NOW());

SELECT * FROM Users;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Payments;

