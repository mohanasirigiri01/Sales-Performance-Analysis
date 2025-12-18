SELECT 
    customers.region,
    SUM(order_details.sales_amount) AS region_sales
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
JOIN order_details
    ON orders.order_id = order_details.order_id
GROUP BY customers.region;

SELECT c.customer_name,
       SUM(od.sales_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
SELECT 
    MONTH(o.order_date) AS month,
    SUM(od.sales_amount) AS monthly_sales
FROM orders o
JOIN order_details od 
    ON o.order_id = od.order_id
GROUP BY MONTH(o.order_date)
ORDER BY month;
SELECT 
    o.order_date,
    SUM(od.sales_amount) AS daily_sales
FROM orders o
JOIN order_details od 
    ON o.order_id = od.order_id
GROUP BY o.order_date
ORDER BY o.order_date;
SELECT 
    p.product_name,
    MONTH(o.order_date) AS month,
    SUM(od.sales_amount) AS total_sales
FROM products p
JOIN order_details od ON p.product_id = od.product_id
JOIN orders o ON od.order_id = o.order_id
GROUP BY p.product_name, MONTH(o.order_date)
ORDER BY total_sales DESC;

