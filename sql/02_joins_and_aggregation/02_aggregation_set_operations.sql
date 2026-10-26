SELECT status, COUNT(*) AS orders_count
FROM orders
GROUP BY status
HAVING COUNT(*) >= 2
ORDER BY orders_count DESC;

-- UNION removes duplicate rows; UNION ALL preserves them.
SELECT email FROM customers
UNION
SELECT email FROM newsletter_subscribers;

-- Set operations require compatible column counts and types.
