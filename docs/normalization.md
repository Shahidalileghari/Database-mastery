# Normalization and Schema Design

Normalization reduces undesirable redundancy and update anomalies. It is a design tool, not a rule to normalize blindly.

## Practical sequence
1. Identify entities and business facts.
2. Give each entity a stable key.
3. Separate repeating groups and multi-valued attributes.
4. Move attributes to the entity they describe.
5. Model many-to-many relationships with a junction table.
6. Add constraints that express business invariants.
7. Validate with real queries and revise where justified.

## Normal forms (high-level)
- **1NF:** each attribute value is atomic in the chosen relational model; no repeating groups.
- **2NF:** in 1NF, and non-key attributes depend on the whole candidate key rather than part of a composite key.
- **3NF:** in 2NF, and non-key attributes do not depend transitively on candidate keys.
- **BCNF:** every determinant is a candidate key.

## Example
Instead of storing comma-separated product IDs in an order row, use `orders` and `order_items`. Each order item references one product and stores order-specific facts such as quantity and the unit price at purchase time.

Denormalization can be appropriate for measured performance or reporting needs. Document the reason and how consistency is maintained.
