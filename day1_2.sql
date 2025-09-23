create database order_management;
use order_management;

-- Creating the 'orders' table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(20) NOT NULL
);

-- Inserting dummy data into 'orders' table
INSERT INTO orders (customer_name, product_name, quantity, price, order_date, order_status)
VALUES
('Alice Johnson', 'Wireless Mouse', 2, 29.99, '2025-09-20', 'Shipped'),
('Bob Smith', 'Bluetooth Headphones', 1, 59.99, '2025-09-21', 'Processing'),
('Charlie Brown', 'Laptop Stand', 3, 19.99, '2025-09-22', 'Delivered'),
('David Williams', 'USB-C Charger', 5, 12.99, '2025-09-18', 'Pending'),
('Eva Davis', 'Smart Watch', 1, 199.99, '2025-09-17', 'Cancelled'),
('Frank Lee', 'Wireless Keyboard', 2, 49.99, '2025-09-16', 'Shipped'),
('Grace Taylor', 'Laptop Backpack', 1, 39.99, '2025-09-19', 'Delivered'),
('Hannah King', 'Portable Speaker', 2, 79.99, '2025-09-20', 'Shipped');

select *from orders;

select * from orders order by price asc;

  --highest price--
SELECT MAX(price) AS max_value
FROM orders;
      or
select * from orders order by price desc limit 1;

--second highest--
select * from orders order by price desc limit 1 offset 1;

--repeat--
select * from orders where order_status in('Delivered','Shipped');

select max(price) from orders;

select min(price) from orders;

select avg(price) from orders;

select count(*), order_status from orders group by order_status;
