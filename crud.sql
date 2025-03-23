-- insert new data

INSERT INTO Users (name, email, password) VALUES ('yogi', 'yogi@example.com', 'password123');



-- Insert a New Product

INSERT INTO Products (name, category, price, stock) VALUES ('Leather Jacket', 'Clothing', 99.99, 20);

INSERT INTO Orders (id, user_id, order_amount, timestamp) VALUES ('11', 'Clothing', 99.99, 20);



-- update 

UPDATE Users SET email = 'romilmoradiya@gmail.com' WHERE id = 1;

-- Update Product Price

UPDATE Products SET price = 89.99 WHERE id = 2;
UPDATE Products SET stock = 0 WHERE id = 1;

-- Update Order Status (Add a Status Column First)

ALTER TABLE Orders ADD COLUMN status VARCHAR(20) DEFAULT 'Pending';
UPDATE Orders SET status = 'Shipped' WHERE id = 3;

-- DELETE

DELETE FROM Users WHERE id = 11;

DELETE FROM Products WHERE id = 11;

-- delete product when order fail

START TRANSACTION;

DELETE FROM OrderDetails WHERE order_id = 2;
DELETE FROM Orders WHERE id = 2;

COMMIT;

