-- Day 1: CTE basics
-- Goal: filter on a calculated field cleanly

WITH order_revenue AS (
  SELECT
    order_id,
    customer_id,
    price,
    quantity,
    price * quantity AS revenue
  FROM orders
)

SELECT
  order_id,
  customer_id,
  revenue
FROM order_revenue
WHERE revenue > 100
ORDER BY revenue DESC;
