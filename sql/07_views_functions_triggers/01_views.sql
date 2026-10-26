CREATE OR REPLACE VIEW order_totals AS
SELECT
    o.order_id,
    o.customer_id,
    o.status,
    o.placed_at,
    COALESCE(SUM(oi.quantity * oi.unit_price), 0)::NUMERIC(12, 2) AS total_amount
FROM orders AS o
LEFT JOIN order_items AS oi ON oi.order_id = o.order_id
GROUP BY o.order_id, o.customer_id, o.status, o.placed_at;

-- Example:
-- SELECT * FROM order_totals ORDER BY placed_at DESC;
