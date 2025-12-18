create database sales_analysis;
use sales_analysis;
create table customers(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR (100),
    region VARCHAR(50)
);
CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR (100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
create table orders(
	order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
create table order_details(
	order_id INT,
    product_id INT,
    quantity INT,
    sales_amount DECIMAL(10,2),
    FOREIGN KEY(order_id) REFERENCES orders(order_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);