-- PostgreSQL: SELECT, expressions, filtering, sorting, and NULL behavior.
SELECT
    product_id,
    product_name,
    unit_price,
    unit_price * 1.10 AS price_with_10_percent_increase
FROM products
WHERE unit_price >= 25
ORDER BY unit_price DESC, product_name ASC
LIMIT 20;

-- Correct NULL checks:
-- SELECT * FROM products WHERE discontinued_at IS NULL;

-- CASE expression:
SELECT
    product_name,
    unit_price,
    CASE
        WHEN unit_price >= 100 THEN 'premium'
        WHEN unit_price >= 30 THEN 'standard'
        ELSE 'budget'
    END AS price_band
FROM products;
