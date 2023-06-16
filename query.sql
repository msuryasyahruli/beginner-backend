CREATE DATABASE beginnerbackend;
------------------------------------------------------------
CREATE TABLE products(
    id int primary key not null,
    name varchar(255),
    price int not null,
    stock int not null,
    image varchar(255),
    brand varchar(255),
    id_category int not null,
    FOREIGN KEY (id_category) REFERENCES category(id)
);

------------------------------------------------------------
CREATE TABLE category(
    id int not null,
    name varchar(255),
    primary key(id)
);

------------------------------------------------------------
CREATE TABLE orders(
    id int primary key not null,
    date varchar(255),
    address varchar(255),
    shipping varchar(255),
    total_price int not null,
    id_product int not null,
    FOREIGN KEY (id_product) REFERENCES products(id)
);
------------------------------------------------------------||------------------------------------------------------------
------------------------------------------------------------||------------------------------------------------------------
SELECT * FROM products;
SELECT * FROM products ORDER BY name acs LIMIT limit OFFSET offset;
SELECT * FROM products WHERE id=1;
INSERT INTO products(id,name,price,stock,image,brand,id_category) VALUES(1,'kaos',50000,25,'kaos.img','eiger',1);
INSERT INTO products(id,name,price,stock,image,brand,id_category) VALUES(2,'kemeja',60000,43,'kemeja.img','benhill',1);
INSERT INTO products(id,name,price,stock,image,brand,id_category) VALUES(3,'celana',80000,16,'celana.img','bumbbuugie',2);
UPDATE products SET name='kaos putih', price=45000, stock=19, image='kaosputih.img', brand='eiger' WHERE id=1;
DELETE FROM products WHERE id=1;
SELECT COUNT(*) FROM products;
SELECT id FROM product WHERE id=1;

------------------------------------------------------------
SELECT * FROM category;
INSERT INTO category(id,name) VALUES(1,'T-shirt');
INSERT INTO category(id,name) VALUES(2,'short');
INSERT INTO category(id,name) VALUES(3,'pants');
INSERT INTO category(id,name) VALUES(4,'jacket');
UPDATE category SET name='T-shirt' WHERE id=1;
DELETE FROM category WHERE id=1;
SELECT COUNT(*) FROM category;
SELECT id FROM category WHERE id=1;

------------------------------------------------------------
SELECT * FROM orders;
INSERT INTO orders(id,date,address,shipping,total_price,id_product) VALUES(1,'17 juni 2011','jl.gatot subroto no 35','JNE',50000,id_product);
UPDATE orders SET date='18 juni 2011', address='jl.gatot subroto no 35', shipping='JNT reg', total_price=45000, id_product=1 WHERE id=1;
DELETE FROM orders WHERE id=1;
SELECT COUNT(*) FROM orders;
SELECT id FROM orders WHERE id=1;
