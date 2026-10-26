-- Safe examples; run only after creating a suitable table.
-- Prefer explicit columns and parameterized values from application code.
INSERT INTO example_items (item_name, quantity)
VALUES ('sample item', 3);

UPDATE example_items
SET quantity = 4
WHERE item_id = 1;

DELETE FROM example_items
WHERE item_id = 1;

-- Always review the WHERE clause before UPDATE or DELETE.
-- In applications, use bound parameters rather than string concatenation.
