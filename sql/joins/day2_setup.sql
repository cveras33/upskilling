DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;

CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY,
  customer_name TEXT
);

CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  price REAL,
  quantity INTEGER
);

INSERT INTO customers (customer_id, customer_name) VALUES
  (101, 'Alice'),
  (102, 'Bob'),
  (103, 'Carol'),
  (104, 'Dan');

INSERT INTO orders (order_id, customer_id, price, quantity) VALUES
  (1, 101, 25, 2),
  (2, 101, 60, 2),
  (3, 102, 15, 10),
  (4, 105, 40, 1); -- orphan order
