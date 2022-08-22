--- 20-08-2022 11:32:25
--- SQLite
DROP TABLE demo;

--- 20-08-2022 11:36:28
--- SQLite
/***** ERROR ******
near "NOTNULL": syntax error
 ----- 
CREATE TABLE products(
  id INT NOTNULL,
  name STRING,
  price MONEY,
  PRIMARY KEY (id)
);
*****/

--- 20-08-2022 11:36:39
--- SQLite
CREATE TABLE products(
  id INT NOT NULL,
  name STRING,
  price MONEY,
  PRIMARY KEY (id)
);

--- 20-08-2022 11:40:01
--- SQLite
INSERT into products 
VALUES (1,"PEN",1.2);

--- 20-08-2022 11:40:58
--- SQLite
INSERT into products (id, name) 
VALUES (2,"PENSIL");

--- 20-08-2022 11:41:15
--- SQLite
SELECT * FROM products;

--- 20-08-2022 11:44:26
--- SQLite
SELECT name, price FROM products;

--- 20-08-2022 11:46:10
--- SQLite
SELECT * FROM products WHERE id=1 ;

--- 20-08-2022 12:09:08
--- SQLite
SELECT * FROM products;

--- 20-08-2022 12:15:42
--- SQLite
UPDATE products
SET price=0.8
WHERE id=2;

--- 20-08-2022 12:15:49
--- SQLite
SELECT * FROM products;

--- 20-08-2022 12:16:50
--- SQLite
ALTER TABLE products
ADD stock INT;

--- 20-08-2022 12:16:57
--- SQLite
SELECT * FROM products;

--- 20-08-2022 12:17:46
--- SQLite
UPDATE products
set stock = 32 
WHERE id=1;

--- 20-08-2022 12:17:55
--- SQLite
SELECT * FROM products;

--- 20-08-2022 12:18:41
--- SQLite
UPDATE products
set stock = 12
where id = 2;

--- 20-08-2022 12:18:46
--- SQLite
SELECT * FROM products;

--- 20-08-2022 13:00:46
--- SQLite
DELETE FROM products
WHERE id = 2;

--- 20-08-2022 13:00:52
--- SQLite
SELECT * FROM products;

--- 20-08-2022 20:26:52
--- SQLite
/***** ERROR ******
UNIQUE constraint failed: products.id
 ----- 
INSERT INTO products
values (1,"Pensil", 0.8,12);
*****/

--- 20-08-2022 20:27:11
--- SQLite
INSERT INTO products
values (2,"Pensil", 0.8,12);

--- 20-08-2022 20:27:34
--- SQLite
SELECT * FROM products;

--- 20-08-2022 22:46:03
--- SQLite
/***** ERROR ******
near "NOTNULL": syntax error
 ----- 
CREATE table orders
( id INT NOTNULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:46:19
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
CREATE table orders
( id INT NOT NULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:46:26
--- SQLite
/***** ERROR ******
near "NOTNULL": syntax error
 ----- 
CREATE table orders
( id INT, NOTNULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:46:50
--- SQLite
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'products' AND type LIKE 'table';

--- 20-08-2022 22:47:06
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
CREATE table orders
( id INT NOT NULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:47:28
--- SQLite
SELECT `sql` FROM `sqlite_master` WHERE name LIKE 'products' AND type LIKE 'table';

--- 20-08-2022 22:47:42
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
CREATE table orders(
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:47:59
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
CREATE table orders(
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:48:38
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
CREATE table orders(
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:48:46
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
CREATE table orders(
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:49:07
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
CREATE table orders(
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id)
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:50:02
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
CREATE table orders(
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:50:22
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
CREATE table orders(
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:50:31
--- SQLite
/***** ERROR ******
near ",": syntax error
 ----- 
CREATE table orders (
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  order_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id),
  Foreign key (order_id)
);
*****/

--- 20-08-2022 22:59:06
--- SQLite
CREATE table orders (
  id INT NOT NULL,
  order_number INT,
  customer_id INT,
  product_id INT,
  PRIMARY key (id),
  FOREIGN key (customer_id) REFERENCES customer
  Foreign key (product_id) REFERENCES products
);

--- 20-08-2022 23:04:16
--- SQLite
/***** ERROR ******
near ")": syntax error
 ----- 
CREATE table customer (
  id INT NOT NULL,
  first_name STRING,
  last_name STRING,
  address STRING,
  PRIMARY key (id),
);
*****/

--- 20-08-2022 23:04:21
--- SQLite
CREATE table customer (
  id INT NOT NULL,
  first_name STRING,
  last_name STRING,
  address STRING,
  PRIMARY key (id)
);

--- 20-08-2022 23:07:03
--- SQLite
INSERT INTO customer
VALUES (1,"Pradumn","Prasad","NEW DELHI");

--- 20-08-2022 23:07:08
--- SQLite
SELECT * FROM customer;

--- 20-08-2022 23:08:02
--- SQLite
/***** ERROR ******
near ")": syntax error
 ----- 
INSERT into customer
VALUES (2,);
*****/

--- 20-08-2022 23:08:03
--- SQLite
/***** ERROR ******
near ")": syntax error
 ----- 
INSERT into customer
VALUES (2,);
*****/

--- 20-08-2022 23:10:20
--- SQLite
INSERT into customer
VALUES (2,"Sinchan","Nohara","Tokyo");

--- 20-08-2022 23:10:25
--- SQLite
SELECT * FROM customer;

--- 20-08-2022 23:12:22
--- SQLite
insert into orders
values (1,4362,2,1);

--- 20-08-2022 23:12:35
--- SQLite
SELECT * FROM orders;

--- 20-08-2022 23:37:47
--- SQLite
/***** ERROR ******
near ".": syntax error
 ----- 
SELECT orders.order_number customer.first_name customer.last_name customer.address
FROM orders
INNER JOIN customer
ON orders.customer_id = customer.id;
*****/

--- 20-08-2022 23:40:46
--- SQLite
SELECT orders.order_number, customer.first_name, customer.last_name, customer.address
FROM orders
INNER JOIN customer
ON orders.customer_id = customer.id;

--- 20-08-2022 23:46:58
--- SQLite
/***** ERROR ******
no such column: product.id
 ----- 
SELECT orders.order_number, products.name, products.price, products.stock
FROM orders
INNER JOIN products
ON orders.product_id = product.id;
*****/

--- 20-08-2022 23:47:13
--- SQLite
SELECT orders.order_number, products.name, products.price, products.stock
FROM orders
INNER JOIN products
ON orders.product_id = products.id;

