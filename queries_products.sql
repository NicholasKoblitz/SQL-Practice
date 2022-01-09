-- Comments in SQL Start with dash-dash --

-- Creates   new record with the given information
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, 'false');

-- Creates   new record with the given information
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, 'true');

-- Creates   new record with the given information
INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, 'false');

-- Displays all the records within the table
SELECT * FROM products;

-- Displays only the name of the records within the table
SELECT name FROM products;

-- Displays the name and price of the records within the table
SELECT name, price FROM products;

-- Creates a new record with the given infromation
INSERT INTO products (name, price, can_be_returned) VALUES ('Star Wars Books', 100.99, 'true');

-- Displays all records that can be returned
SELECT * FROM products WHERE can_be_returned = 'true';

-- Displays all records that hav a price less than 44.00
SELECT * FROM products WHERE price < 44.00;

-- Displays all records that have a price that is between 22.50 and 99.99
SELECT * FROM products WHERE price >= 22.50 AND price <= 99.99;

-- Updates the table so that all records have their price droped by 20
UPDATE products SET price = price - 20;

-- Deletes any record that has a price that is 25 or less
DELETE FROM products WHERE price <= 25;

-- Updates the table so that all records have thier price increased by 20
UPDATE products SET price = price + 20;

-- Updates the table so that all items can be returned
UPDATE products SET can_be_returned = 'true';