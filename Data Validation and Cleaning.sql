SELECT *
FROM customers
WHERE customer_name IS NULL
   OR region IS NULL;
SELECT *
FROM orders
WHERE order_date IS NULL
   OR customer_id IS NULL;
SELECT customer_id, COUNT(*) AS count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;
SELECT *
FROM order_details
WHERE sales_amount <= 0;
SELECT *
FROM order_details
WHERE quantity <= 0;
SELECT *
FROM orders
WHERE customer_id NOT IN (SELECT customer_id FROM customers);
