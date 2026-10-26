# Database Mastery Challenge Set

## Beginner
1. Return all active products under 100, sorted by price.
2. Count customers and orders.
3. Find orders created during January 2026.
4. Show each order with its customer name.
5. List customers who have never ordered.

## Intermediate
6. Calculate the value of each order from order items.
7. Find the top three products by units sold for paid/shipped orders.
8. Return customers whose total order-item value exceeds 100.
9. Use a window function to rank each customer's orders by value.
10. Show monthly succeeded-payment totals, including months with no successful payments in the selected period.

## Advanced
11. Add a `shipments` table with constraints and a clear relationship to orders.
12. Design a refund model that preserves payment history rather than overwriting it.
13. Propose indexes for the top three analytical queries and justify them with query plans.
14. Write a transaction that reserves inventory safely under concurrent requests.
15. Define application and read-only roles using least privilege.
16. Design a migration to add a required column to a populated table with a safe rollout plan.
17. Explain which invariants should be constraints, which belong in transaction logic, and why.
18. Compare offset pagination and keyset pagination for a large order history.

## Review checklist
- Are duplicates handled intentionally?
- What happens when related rows are missing?
- Are money values represented with exact numeric types?
- Are updates and deletes restricted to intended rows?
- Can the query use an index, and is that index actually beneficial?
- Are concurrency and retries considered?
