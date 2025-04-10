CREATE DATABASE IF NOT EXISTS ecommerce_business;
USE ecommerce_business;

-- 2. Create the table
CREATE TABLE business (
    customers_id INT,
    orders INT,
    products VARCHAR(50),
    sales INT
);
INSERT INTO business VALUES
(1, 5, 'Mobile', 50000),
(2, 10, 'Laptop', 100000),
(3, 7, 'Ipad', 60000),
(4, 15, 'Memory', 10000),
(5, 12, 'sim', 5000);

SELECT * FROM business;

-- 5. Total sales value
SELECT SUM(sales) AS total_sales FROM business;

-- 6. Average sales value
SELECT AVG(sales) AS average_sales FROM business;

-- 7. Product with the highest sales
SELECT * FROM business
ORDER BY sales DESC
LIMIT 1;