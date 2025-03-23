START TRANSACTION;

-- Update the product stock
UPDATE Products 
SET stock = stock - 1 
WHERE id = 1 AND stock > 0;

-- Check if stock update was successful (i.e., if any row was affected)
IF ROW_COUNT() = 0 THEN
    ROLLBACK;
    SELECT 'Transaction Failed: Insufficient Stock' AS Message;
ELSE
    -- Insert order if stock is available
    INSERT INTO Orders (user_id, total_amount) VALUES (1, 19.99);
    SET @order_id = LAST_INSERT_ID();

    -- Insert order details
    INSERT INTO OrderDetails (order_id, product_id, quantity, price) 
    VALUES (@order_id, 1, 1, 19.99);

    COMMIT;
    SELECT 'Transaction Successful: Order Placed' AS Message;
END IF;
