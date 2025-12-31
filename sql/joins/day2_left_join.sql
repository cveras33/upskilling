SELECT
  c.customer_id,
  c.customer_name,
  o.order_id,
  o.price,
  o.quantity
FROM customers c
LEFT JOIN orders o
  ON c.customer_id = o.customer_id
ORDER BY c.customer_id;


/* This breaks once you: 
- add another join, 
- join to a one-to-many table 
- join to events, items, or sessions 
*/ 