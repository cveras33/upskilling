WITH order_revenue AS (
  SELECT
    customer_id,
    SUM(price * quantity) AS total_revenue
  FROM orders
  GROUP BY customer_id
)
SELECT
  c.customer_id,
  c.customer_name,
  COALESCE(orv.total_revenue, 0) AS total_revenue
FROM customers c
LEFT JOIN order_revenue orv
  ON c.customer_id = orv.customer_id
ORDER BY c.customer_id;
