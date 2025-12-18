INSERT INTO customers VALUES
(1, 'Mohana', 'North'),
(2, 'Priyanka', 'South'),
(3, 'Charan', 'East'),
(4, 'Kalyan', 'West');
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 60000),
(102, 'Mobile', 'Electronics', 30000),
(103, 'Chair', 'Furniture', 5000),
(104, 'Table', 'Furniture', 8000);
INSERT INTO orders VALUES
(1001, '2024-01-10', 1),
(1002, '2024-01-15', 2),
(1003, '2024-02-05', 3),
(1004, '2024-02-20', 1);
INSERT INTO order_details VALUES
(1001, 101, 1, 60000),
(1001, 102, 1, 30000),
(1002, 103, 2, 10000),
(1003, 104, 1, 8000),
(1004, 101, 1, 60000);
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_details;