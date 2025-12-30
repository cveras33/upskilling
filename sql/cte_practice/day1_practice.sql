-- Exercise 1 — Filtering on Calculations (Warm-Up)

/* with order_revenue as (
    SELECT
        order_id,
        customer_id, 
        price,
        quantity,
        price * quantity as revenue
    FROM 
        orders)

SELECT 
    order_id, 
    customer_id, 
    revenue
FROM 
    order_revenue
WHERE
    revenue >= 120 

ORDER BY revenue DESC; */

-- Exercise 2 — Aggregation + CTE

/*with order_revenue as (
    SELECT
        customer_id, 
        price, 
        quantity,
        price * quantity as customer_revenue 
    FROM 
        orders),

customer_total_revenue as (
    SELECT 
        customer_id, 
        SUM(customer_revenue) as total_revenue
    FROM 
        order_revenue
    GROUP BY customer_id
)

SELECT
    customer_id, 
    total_revenue
FROM 
    customer_total_revenue
WHERE 
    total_revenue > 150; */

-- Exercise 3 — Multiple CTEs (This Is Real-World)

with order_revenue as (
    SELECT
        order_id,
        customer_id, 
        price,
        quantity,
        price * quantity as revenue
    FROM 
        orders), 

total_revenue as (
    SELECT
        customer_id, 
        SUM(revenue) as customer_totals
    FROM 
        order_revenue
    GROUP BY customer_id)

SELECT
    customer_id, 
    customer_totals
FROM 
    total_revenue
ORDER BY customer_totals DESC; 





    