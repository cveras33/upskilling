-- Exercise 1 — Revenue
-- Problem with this solution: doesn't capture EVERY CUSTOMER in this way this was coded
-- needed to pull from customer table in order to capture all customers
-- then use COALESCE() to populate customer's total_revenue = 0 if they don't have an order

/*with customer_orders as (
    SELECT
        customer_id, 
        (price * quantity) as total_revenue 
    FROM 
        orders
)

SELECT 
    customer_id, 
    COALESCE(sum(total_revenue), 0)
FROM 
    customer_orders
GROUP BY customer_id; */

-- Exercise 2 - Order count

with customer_orders as (
    SELECT
        customer_id, 
        order_id 
    FROM 
        orders), 

total_orders as (
    SELECT
        customer_id, 
        COUNT(order_id) as total -- better practice to do COUNT(*) to count all rows 
    FROM 
        customer_orders
    -- should have a GROUP BY here: using an aggregate but not grouping can cause issues
)

SELECT 
    c.customer_id, 
    COALESCE(o.total, 0) 
FROM 
    customers c
    LEFT JOIN total_orders o ON c.customer_id = o.customer_id
-- add order by customer_id here for better results readability; 

