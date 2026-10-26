# Database Engineering Roadmap

Use this as a progression checklist. The SQL examples are PostgreSQL-oriented.

## Phase 1 — Foundations
- [ ] Database, DBMS, schema, table, row, column, and data type
- [ ] Relational model, primary keys, foreign keys, candidate keys
- [ ] `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, aliases
- [ ] `NULL`, three-valued logic, `COALESCE`, `CASE`
- [ ] `INSERT`, `UPDATE`, `DELETE`

## Phase 2 — Querying
- [ ] Aggregate functions and `GROUP BY`
- [ ] `HAVING` versus `WHERE`
- [ ] INNER, LEFT, RIGHT, and FULL joins
- [ ] Self joins and cross joins
- [ ] `UNION`, `INTERSECT`, `EXCEPT`
- [ ] Subqueries and correlated subqueries
- [ ] CTEs and recursive CTEs
- [ ] Window functions, ranking, running totals, and `LAG` / `LEAD`

## Phase 3 — Data modeling
- [ ] Entities, attributes, relationships, and ER diagrams
- [ ] One-to-one, one-to-many, many-to-many
- [ ] Normalization: 1NF, 2NF, 3NF, BCNF
- [ ] Constraints, defaults, identity columns, and generated values
- [ ] Associative tables and historical data
- [ ] Denormalization trade-offs

## Phase 4 — Reliability and concurrency
- [ ] ACID properties
- [ ] `BEGIN`, `COMMIT`, `ROLLBACK`, savepoints
- [ ] Isolation levels and anomalies
- [ ] Locking, deadlocks, optimistic concurrency
- [ ] Idempotency and safe retry design

## Phase 5 — Performance
- [ ] B-tree and other index types
- [ ] Composite and partial indexes
- [ ] Index selectivity and write overhead
- [ ] `EXPLAIN` / `EXPLAIN ANALYZE`
- [ ] Statistics, query plans, and sargable predicates
- [ ] Pagination: offset versus keyset
- [ ] Connection pooling and workload-aware tuning

## Phase 6 — Advanced SQL and operations
- [ ] Views and materialized views
- [ ] Functions and triggers (with careful justification)
- [ ] Schema migrations and rollback strategy
- [ ] Roles, grants, least privilege, and row-level security
- [ ] Backups, restores, replication, monitoring
- [ ] Partitioning and high-availability concepts

## Phase 7 — Broader ecosystem
- [ ] Relational versus document, key-value, wide-column, and graph databases
- [ ] Data warehouses, OLTP versus OLAP
- [ ] ETL / ELT and data quality
- [ ] Caching, search engines, and when not to use a database as a search engine
- [ ] CAP theorem and distributed-system trade-offs

## Capstone acceptance criteria
- [ ] Schema has explicit keys and integrity constraints
- [ ] Seed data is deterministic and contains edge cases
- [ ] Queries answer documented business questions
- [ ] Indexes are justified with query plans
- [ ] Transactions protect multi-step business operations
- [ ] Security roles follow least privilege
- [ ] Setup and reset instructions are documented
