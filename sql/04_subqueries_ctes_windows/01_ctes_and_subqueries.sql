-- Customers whose total spend exceeds 1000.
WITH customer_spend AS (
    SELECT o.customer_id, SUM(oi.quantity * oi.unit_price) AS total_spend
    FROM orders AS o
    JOIN order_items AS oi ON oi.order_id = o.order_id
    GROUP BY o.customer_id
)
SELECT c.customer_id, c.full_name, cs.total_spend
FROM customer_spend AS cs
JOIN customers AS c ON c.customer_id = cs.customer_id
WHERE cs.total_spend > 1000
ORDER BY cs.total_spend DESC;

-- EXISTS is useful when testing whether related rows exist.
SELECT c.customer_id, c.full_name
FROM customers AS c
WHERE EXISTS (
    SELECT 1 FROM orders AS o
    WHERE o.customer_id = c.customer_id
);
