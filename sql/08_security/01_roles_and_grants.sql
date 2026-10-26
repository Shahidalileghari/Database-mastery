-- Run as a database administrator in a local learning database.
-- Choose strong credentials outside source control.
-- CREATE ROLE app_readonly LOGIN;
-- GRANT CONNECT ON DATABASE database_mastery TO app_readonly;
-- GRANT USAGE ON SCHEMA public TO app_readonly;
-- GRANT SELECT ON ALL TABLES IN SCHEMA public TO app_readonly;

-- Default privileges must be configured by the role that creates future objects.
-- Review PostgreSQL documentation before applying to a shared or production DB.
