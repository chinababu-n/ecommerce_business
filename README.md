

# Ecommerce Business SQL Analysis

This project contains SQL scripts to create a simple e-commerce database in MySQL and perform various data analysis tasks.

## Database Name
`ecommerce_business`

## Table Name
`business`

## Contents
- Table creation
- Sample data insert
- Sales analytics using SQL
- Views and indexes
<details> <summary>Click to expand SQL file content</summary>
-- 1. Create the database
CREATE DATABASE IF NOT EXISTS ecommerce_business;
USE ecommerce_business;

-- 2. Create the table
CREATE TABLE business (
    customers_id INT,
    orders INT,
    products VARCHAR(50),
    sales INT
);

-- 3. Insert sample data
INSERT INTO business VALUES
(1, 5, 'Mobile', 50000),
(2, 10, 'Laptop', 100000),
(3, 7, 'Ipad', 60000),
(4, 15, 'Memory', 10000),
(5, 12, 'sim', 5000);

-- 4. View all data
SELECT * FROM business;

-- 5. Total sales value
SELECT SUM(sales) AS total_sales FROM business;

-- 6. Average sales value
SELECT AVG(sales) AS average_sales FROM business;

-- 7. Product with the highest sales
SELECT * FROM business
ORDER BY sales DESC
LIMIT 1;

-- 8. Product with the lowest sales
SELECT * FROM business
ORDER BY sales ASC
LIMIT 1;

-- 9. Total number of orders per product
SELECT products, SUM(orders) AS total_orders
FROM business
GROUP BY products;

-- 10. Customers who placed more than 10 orders
SELECT * FROM business
WHERE orders > 10;

-- 11. Sales by product (descending)
SELECT products, sales
FROM business
ORDER BY sales DESC;

-- 12. Update product name 'sim' to 'SIM Card'
UPDATE business
SET products = 'SIM Card'
WHERE products = 'sim';

-- 13. Create a view for high sales products (sales > 50000)
CREATE VIEW high_sales_products AS
SELECT * FROM business
WHERE sales > 50000;

-- 14. Retrieve data from the view
SELECT * FROM high_sales_products;

-- 15. Add an index on products for optimization
CREATE INDEX idx_products ON business(products);


# Screenshots
![Screenshot 2025-04-10 211557](https://github.com/user-attachments/assets/6f5355af-b615-43a8-8a27-a8adf20d56c6)
![higest sales](https://github.com/user-attachments/assets/ac5eedc2-4cf9-42fe-8373-860ee995828f)
![Screenshot 2025-04-10 212952](https://github.com/user-attachments/assets/ee4f0503-76b0-4d3a-a69d-408b79ad6385)
![Screenshot 2025-04-10 212937](https://github.com/user-attachments/assets/f601736d-8c29-4575-9c7a-7d09f7aedcc4)
![Average sales](https://github.com/user-attachments/assets/81df9709-27d3-47d8-9fad-ff3c06ca7612)






