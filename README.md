# Database Mastery

A structured, hands-on database engineering repository covering SQL fundamentals through advanced relational database design, query optimization, transactions, security, migrations, and practical projects. PostgreSQL is the primary SQL dialect; conceptual notes also compare relational and NoSQL systems.

## Goals

- Build strong SQL fluency, from filtering and joins to CTEs and window functions.
- Design normalized schemas with clear keys, constraints, and relationships.
- Understand transactions, isolation, concurrency, and indexing.
- Practice query plans and performance analysis with `EXPLAIN`.
- Learn database security, migrations, backups, and operational fundamentals.
- Build portfolio-ready database projects with reproducible schemas and seed data.

## Repository layout

```text
database-mastery/
├── README.md
├── LICENSE
├── .gitignore
├── docs/
│   ├── learning-roadmap.md
│   ├── database-fundamentals.md
│   ├── relational-vs-nosql.md
│   ├── normalization.md
│   ├── transactions-and-isolation.md
│   ├── indexing-and-performance.md
│   ├── security-and-operations.md
│   └── contribution-guide.md
├── sql/
│   ├── 00_environment/
│   ├── 01_fundamentals/
│   ├── 02_joins_and_aggregation/
│   ├── 03_schema_design/
│   ├── 04_subqueries_ctes_windows/
│   ├── 05_transactions/
│   ├── 06_indexes_and_performance/
│   ├── 07_views_functions_triggers/
│   ├── 08_security/
│   └── 09_projects/
│       └── ecommerce/
├── exercises/
│   ├── README.md
│   └── challenge-set.md
└── resources/
    └── glossary.md
```

## Requirements

- PostgreSQL 15+ (PostgreSQL 16+ recommended)
- `psql` command-line client or a GUI such as pgAdmin / DBeaver
- Optional: Docker for a disposable local database

## Quick start

1. Install PostgreSQL and create a local database named `database_mastery`.
2. Connect to it using `psql`.
3. Run the scripts in numerical order where appropriate. Some folders are independent modules; read the comments at the top of each SQL file.
4. Start with the ecommerce project, then complete the exercise set.

Example:

```bash
createdb database_mastery
psql -d database_mastery -f sql/09_projects/ecommerce/01_schema.sql
psql -d database_mastery -f sql/09_projects/ecommerce/02_seed_data.sql
psql -d database_mastery -f sql/09_projects/ecommerce/03_queries.sql
```

On Windows, these commands work when PostgreSQL's `bin` directory is on `PATH`; otherwise use the full path to `psql.exe`.

## Learning path

1. Environment and relational concepts
2. `SELECT`, filtering, sorting, expressions, and NULL behavior
3. Aggregation, joins, and set operations
4. DDL, constraints, relationships, and schema design
5. Subqueries, CTEs, and window functions
6. Transactions, isolation, and concurrency
7. Indexes, query plans, and optimization
8. Views, functions, triggers, and migrations
9. Least-privilege access, backups, and operational readiness
10. Capstone project and documented trade-offs

## Portfolio projects

- **E-commerce analytics database** — customers, products, orders, order items, payments, constraints, sample data, and analytics queries.
- **Extend it** — add inventory history, refunds, coupons, audit logging, pagination, and reporting views.
- **Optional NoSQL comparison** — model a document-oriented product catalog and explain which access patterns benefit from it.

## Engineering standards

- Prefer explicit column lists over `SELECT *` in application queries.
- Use constraints to enforce data integrity close to the data.
- Parameterize application queries; never concatenate untrusted input into SQL.
- Use migrations for schema changes and test both forward changes and rollback plans.
- Measure performance with realistic data and query plans rather than guessing.
- Keep secrets and production data out of version control.

## Scope and accuracy

This is a learning repository, not a production-ready deployment template. SQL examples target PostgreSQL. Other database engines differ in data types, identity syntax, functions, transaction semantics, and administrative commands. The roadmap marks areas to extend as you progress.

## Repository description

**GitHub description:** `A hands-on database engineering roadmap: SQL, relational design, PostgreSQL, joins, CTEs, window functions, transactions, indexing, optimization, security, and practical projects.`

## Suggested topics/tags

`database` `sql` `postgresql` `database-design` `query-optimization` `transactions` `data-engineering` `learning-resource`
