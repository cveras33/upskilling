DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  price REAL NOT NULL,
  quantity INTEGER NOT NULL
);

INSERT INTO orders (order_id, customer_id, price, quantity) VALUES
  (1, 101, 25.00, 2),   -- revenue 50
  (2, 101, 60.00, 2),   -- revenue 120
  (3, 102, 15.00, 10),  -- revenue 150
  (4, 103, 45.00, 1),   -- revenue 45
  (5, 104, 40.00, 3);   -- revenue 120
