-- Rank orders by value within each customer.
WITH order_totals AS (
    SELECT o.order_id, o.customer_id, o.placed_at,
           SUM(oi.quantity * oi.unit_price) AS order_total
    FROM orders AS o
    JOIN order_items AS oi ON oi.order_id = o.order_id
    GROUP BY o.order_id, o.customer_id, o.placed_at
)
SELECT *,
       ROW_NUMBER() OVER (
           PARTITION BY customer_id ORDER BY order_total DESC, order_id
       ) AS value_rank,
       SUM(order_total) OVER (
           PARTITION BY customer_id
           ORDER BY placed_at, order_id
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS running_spend
FROM order_totals;
