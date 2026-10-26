# Database Security and Operations

## Security checklist
- Use separate roles for owners, migrations, applications, and read-only analytics.
- Grant only required privileges; avoid application use of superuser accounts.
- Use parameterized queries / prepared statements.
- Keep credentials in environment or secret-management systems, never in source control.
- Encrypt network connections where appropriate and protect backups.
- Limit network exposure; use firewall rules and private networking.
- Log access and errors without leaking secrets or sensitive values.
- Test authorization, restore procedures, and incident response.

## Operations checklist
- Automate backups and verify restores, not just backup creation.
- Define recovery point objective (RPO) and recovery time objective (RTO).
- Monitor connection saturation, slow queries, storage, replication lag, and errors.
- Apply schema changes through reviewed, versioned migrations.
- Test migrations on representative data and plan backward-compatible deployments.
- Keep statistics current and schedule maintenance appropriate to workload.

A local learning project should never contain real credentials or production personal data.
