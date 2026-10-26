-- Inspect the plan before deciding whether an index is needed.
EXPLAIN (ANALYZE, BUFFERS)
SELECT order_id, customer_id, placed_at
FROM orders
WHERE customer_id = 1
ORDER BY placed_at DESC
LIMIT 20;

-- Example candidate index for the query above:
CREATE INDEX IF NOT EXISTS idx_orders_customer_placed_at
    ON orders (customer_id, placed_at DESC);

-- Re-run EXPLAIN after creating the index and compare plans and timings.
-- Indexes have write and storage costs; keep only justified indexes.
