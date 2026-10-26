# Relational vs NoSQL

Choose based on access patterns, consistency requirements, relationships, operations, and team capabilities—not fashion.

| Model | Typical strengths | Common fit |
|---|---|---|
| Relational | Constraints, joins, SQL, transactions | Orders, payments, inventory, systems with rich relationships |
| Document | Nested, flexible records | Content metadata, evolving aggregate-shaped data |
| Key-value | Simple key lookup, low-latency access | Sessions, caches, feature flags |
| Wide-column | Distributed high-volume access patterns | Time-series-like or event workloads designed around partition keys |
| Graph | Traversal across connected entities | Relationship analysis, recommendation paths, network data |

## Questions before choosing
1. What are the top read and write access patterns?
2. Which invariants must be enforced atomically?
3. How are relationships queried?
4. What is the expected data volume and growth?
5. What are the operational, backup, and consistency requirements?
6. Does the team have the skills to run the system reliably?

NoSQL is not a single data model, and relational databases can store JSON too. Hybrid architectures are common, but each extra datastore adds operational complexity.
