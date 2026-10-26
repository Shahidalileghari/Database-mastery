-- INNER JOIN: only matching rows
SELECT o.order_id, c.full_name, o.placed_at
FROM orders AS o
JOIN customers AS c ON c.customer_id = o.customer_id;

-- LEFT JOIN: keep every customer, including customers with no orders
SELECT c.customer_id, c.full_name, COUNT(o.order_id) AS order_count
FROM customers AS c
LEFT JOIN orders AS o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY order_count DESC, c.customer_id;

-- Many-to-many relationship through order_items
SELECT o.order_id, p.product_name, oi.quantity, oi.unit_price
FROM orders AS o
JOIN order_items AS oi ON oi.order_id = o.order_id
JOIN products AS p ON p.product_id = oi.product_id;
