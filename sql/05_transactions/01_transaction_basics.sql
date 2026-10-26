BEGIN;

-- Demonstration only: replace with a real, reviewed operation.
UPDATE inventory
SET quantity_on_hand = quantity_on_hand - 1
WHERE product_id = 1
  AND quantity_on_hand > 0;

-- Application code must verify the affected-row count before commit.
-- If the condition failed, roll back rather than continuing the workflow.
-- ROLLBACK;
COMMIT;
