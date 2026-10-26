-- 1. Order totals (including orders with no items).
SELECT o.order_id, c.full_name, o.status, o.placed_at,
       COALESCE(SUM(oi.quantity * oi.unit_price), 0)::NUMERIC(12, 2) AS order_total
FROM orders AS o
JOIN customers AS c ON c.customer_id = o.customer_id
LEFT JOIN order_items AS oi ON oi.order_id = o.order_id
GROUP BY o.order_id, c.full_name, o.status, o.placed_at
ORDER BY o.placed_at DESC;

-- 2. Revenue from succeeded payments by month.
SELECT DATE_TRUNC('month', paid_at) AS revenue_month,
       SUM(amount) AS paid_revenue
FROM payments
WHERE payment_status = 'succeeded'
GROUP BY DATE_TRUNC('month', paid_at)
ORDER BY revenue_month;

-- 3. Top-selling products by quantity.
SELECT p.product_name, SUM(oi.quantity) AS units_sold
FROM order_items AS oi
JOIN products AS p ON p.product_id = oi.product_id
JOIN orders AS o ON o.order_id = oi.order_id
WHERE o.status IN ('paid', 'shipped')
GROUP BY p.product_id, p.product_name
ORDER BY units_sold DESC, p.product_name;

-- 4. Customers who have never placed an order.
SELECT c.customer_id, c.full_name, c.email
FROM customers AS c
WHERE NOT EXISTS (
    SELECT 1 FROM orders AS o WHERE o.customer_id = c.customer_id
);

-- 5. Rank each customer's orders by total.
WITH totals AS (
    SELECT o.order_id, o.customer_id,
           SUM(oi.quantity * oi.unit_price) AS total
    FROM orders AS o
    JOIN order_items AS oi ON oi.order_id = o.order_id
    GROUP BY o.order_id, o.customer_id
)
SELECT order_id, customer_id, total,
       DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY total DESC) AS order_rank
FROM totals;
