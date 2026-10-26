# Database Fundamentals

## Core vocabulary
- **Database:** organized data managed for reliable storage and access.
- **DBMS:** software that manages data, queries, transactions, security, and recovery.
- **Schema:** logical namespace and definition of database objects.
- **Table / row / column:** relation-like structure, individual record, and attribute.
- **Primary key:** chosen unique, non-null identifier for each row.
- **Foreign key:** constraint requiring a referenced value to exist in a referenced key.
- **Constraint:** rule enforced by the database, such as `NOT NULL`, `UNIQUE`, `CHECK`, or a foreign key.

## Common SQL command groups
- DDL: `CREATE`, `ALTER`, `DROP`
- DML: `INSERT`, `UPDATE`, `DELETE`
- Query: `SELECT`
- Transaction control: `BEGIN`, `COMMIT`, `ROLLBACK`, `SAVEPOINT`
- Access control: `GRANT`, `REVOKE`

## SQL logical processing (simplified)
A useful mental model for a query is `FROM` / `JOIN` → `WHERE` → `GROUP BY` → `HAVING` → `SELECT` → `DISTINCT` → `ORDER BY` → `LIMIT`. The database optimizer may execute a physically different plan while preserving query semantics.

## NULL
`NULL` means unknown or absent, not zero or an empty string. Use `IS NULL` / `IS NOT NULL`; `= NULL` does not work as expected. SQL predicates can evaluate to TRUE, FALSE, or UNKNOWN.

## ACID
- Atomicity: a transaction succeeds as a unit or is rolled back.
- Consistency: committed changes preserve defined integrity rules.
- Isolation: concurrent transactions are controlled according to an isolation level.
- Durability: committed changes survive failures according to the system's durability guarantees.

## OLTP and OLAP
OLTP systems prioritize correct, concurrent operational transactions. OLAP systems prioritize analytical queries over large datasets. Real systems may combine patterns, but workload characteristics affect schema and indexing choices.
