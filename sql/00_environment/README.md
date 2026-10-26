# Environment setup

Create a local PostgreSQL database:

```bash
createdb database_mastery
psql -d database_mastery
```

Within `psql`, useful commands include `\l` (list databases), `\dt` (list tables), `\d table_name` (describe table), and `\q` (quit).

These backslash commands are `psql` client commands, not portable SQL.
