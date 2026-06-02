SELECT * FROM Customers;
SELECT * FROM Customers WHERE city = 'Bangalore';
SELECT * FROM Products ORDER BY price DESC;
SELECT customer_id,COUNT(order_id) AS total_orders FROM Orders GROUP BY customer_id;
SELECT SUM(quantity) AS total_quantity FROM Orders;
SELECT AVG(price) AS average_price FROM Products;
SELECT c.customer_name,p.product_name,o.quantity FROM Orders o INNER JOIN Customers c ON o.customer_id = c.customer_id
INNER JOIN Products p ON o.product_id = p.product_id;
SELECT c.customer_name,o.order_id FROM Customers c LEFT JOIN Orders o ON c.customer_id = o.customer_id;
SELECT * FROM Products WHERE price >(SELECT AVG(price) FROM Products);
CREATE VIEW customer_order_summary AS SELECT c.customer_name,COUNT(o.order_id) AS total_orders FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id GROUP BY c.customer_name;
SELECT * FROM customer_order_summary;
CREATE INDEX idx_customer ON Orders(customer_id);
SHOW INDEX FROM Orders;