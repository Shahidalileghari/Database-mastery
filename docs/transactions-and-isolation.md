# Transactions and Isolation

## Transaction pattern
```sql
BEGIN;

UPDATE accounts
SET balance = balance - 100
WHERE account_id = 1
  AND balance >= 100;

-- Application should verify exactly one row was updated.
UPDATE accounts
SET balance = balance + 100
WHERE account_id = 2;

COMMIT;
```
This is an illustrative pattern, not a complete money-transfer implementation: production code must validate affected-row counts, handle errors, and safely roll back if any step fails. The database schema should also enforce relevant invariants.

## Isolation levels
PostgreSQL supports `READ COMMITTED`, `REPEATABLE READ`, and `SERIALIZABLE` (and accepts `READ UNCOMMITTED` as `READ COMMITTED`). Stronger isolation can require retrying transactions after serialization failures.

## Important anomalies and risks
- Dirty reads, non-repeatable reads, phantom reads
- Lost updates and write skew
- Deadlocks from inconsistent lock ordering
- Retrying a non-idempotent operation without an idempotency key

Always keep transactions short, acquire resources in a consistent order, and implement bounded retry logic for retryable failures.
