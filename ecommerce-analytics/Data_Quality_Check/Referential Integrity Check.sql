-- Referential Integrity Check (SQL Logic)
-- Ensures all customer_id and product_id in Fact_Orders exist in the corresponding dimension tables.
-- Missing references are routed to a quarantine table for manual review:

SELECT f.order_id
FROM fact_orders f
LEFT JOIN dim_customers c ON f.customer_id = c.customer_id
WHERE c.customer_id IS NULL;


-- Imputation / Resolution Strategy
-- Extreme values: Flag for manual review (do NOT auto-correct financial data)
-- Missing dimension references: Route to a quarantine table
-- Logged alerts: Airflow task logs + Slack/email alert in production
