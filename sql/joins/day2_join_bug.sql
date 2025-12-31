SELECT
  c.customer_id,
  c.customer_name,
  SUM(o.price * o.quantity) AS total_revenue
FROM customers c
LEFT JOIN orders o
  ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name;
