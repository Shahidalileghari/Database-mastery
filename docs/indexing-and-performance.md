# Indexing and Query Performance

An index is an additional data structure that can reduce lookup work but costs storage and adds overhead to inserts, updates, and deletes.

## A disciplined workflow
1. Capture the slow query and representative parameters.
2. Measure baseline latency and workload conditions.
3. Run `EXPLAIN (ANALYZE, BUFFERS)` in a safe environment.
4. Inspect scans, join algorithms, row estimates, sort operations, and buffer activity.
5. Add or adjust an index only when the plan and workload justify it.
6. Re-measure using representative data and concurrent load.
7. Document the trade-off.

`EXPLAIN ANALYZE` executes the query. Be careful with data-changing statements; use a rollback-safe test setup.

## Index design hints
- B-tree is the general-purpose default for equality and range predicates.
- Composite index column order matters; consider common filter and sort patterns.
- Partial indexes can target a stable subset of rows.
- Functions or casts on indexed columns can prevent ordinary index use unless an appropriate expression index exists.
- Avoid indexing every column. Extra indexes can slow writes and complicate maintenance.
- PostgreSQL also supports specialized index types such as GIN, GiST, BRIN, and hash, each for particular operators and data patterns.

## Pagination
`LIMIT ... OFFSET ...` is simple but can become expensive at large offsets. Keyset pagination can be more efficient when ordering by a stable indexed key.
