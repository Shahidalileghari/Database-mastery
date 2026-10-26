INSERT INTO customers (full_name, email) VALUES
('Ayesha Khan', 'ayesha@example.test'),
('Bilal Ahmed', 'bilal@example.test'),
('Sara Ali', 'sara@example.test');

INSERT INTO products (sku, product_name, unit_price) VALUES
('KB-001', 'Mechanical Keyboard', 85.00),
('MS-002', 'Wireless Mouse', 32.50),
('MN-003', '27-inch Monitor', 249.99),
('CB-004', 'USB-C Cable', 9.99);

INSERT INTO orders (customer_id, status, placed_at) VALUES
(1, 'paid', '2026-01-10T10:00:00Z'),
(1, 'shipped', '2026-01-12T12:30:00Z'),
(2, 'pending', '2026-02-03T09:15:00Z'),
(3, 'cancelled', '2026-02-11T16:00:00Z');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 85.00),
(1, 2, 2, 32.50),
(2, 4, 3, 9.99),
(3, 3, 1, 249.99),
(4, 2, 1, 32.50);

INSERT INTO payments (order_id, amount, payment_status, paid_at) VALUES
(1, 150.00, 'succeeded', '2026-01-10T10:05:00Z'),
(2, 29.97, 'succeeded', '2026-01-12T12:35:00Z'),
(3, 249.99, 'initiated', NULL);
