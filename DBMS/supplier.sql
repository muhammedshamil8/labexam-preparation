CREATE TABLE supplier (supcode CHAR(3) PRIMARY KEY, sname VARCHAR(10), city VARCHAR(10));
CREATE TABLE product (pcode CHAR(3) PRIMARY KEY, pname VARCHAR(20));
CREATE TABLE supl_product (supcode CHAR(3) REFERENCES supplier(supcode), pcode CHAR(3) REFERENCES product(pcode), qty INT);

INSERT INTO supplier VALUES 
('s1', 'Raju', 'calicut'), 
('s2', 'sheela', 'thissur'),
('s3', 'Aysha', 'kochi'),
('s4', 'Anees', 'Tirur'),
('s5', 'Lisa', 'calicut'),
('s6', 'zara', 'tirur');

SELECT * FROM supplier;

INSERT INTO product VALUES 
('p1', 'Soap'), 
('p2', 'Rice'), 
('p3', 'Salt'), 
('p4', 'Sugar'), 
('p5', 'Wheat'), 
('p6', 'Colgate'), 
('p7', 'Chilly');

SELECT * FROM product;

INSERT INTO supl_product VALUES 
('s1', 'p1', 34), 
('s1', 'p2', 20), 
('s2', 'p4', 5), 
('s3', 'p3', 10), 
('s2', 'p7', 10), 
('s3', 'p1', 12);

SELECT * FROM supl_product;

-- a)
SELECT a.supcode, b.supcode, b.city 
FROM supplier a, supplier b 
WHERE a.city = b.city AND a.supcode < b.supcode;

-- b)
SELECT sname 
FROM supplier 
WHERE supcode IN (SELECT supcode FROM supl_product WHERE pcode = 'p2');

-- c)
SELECT pcode 
FROM supl_product 
GROUP BY pcode 
HAVING COUNT(pcode) > 1;

-- d)
SELECT supcode 
FROM supplier 
WHERE city = (SELECT city FROM supplier WHERE supcode = 's1');

-- e)
SELECT sname 
FROM supplier 
WHERE supcode IN (SELECT supcode FROM supl_product WHERE pcode = 'p1');

-- f)
SELECT COUNT(DISTINCT supcode) 
FROM supl_product;

-- g)
SELECT pcode, SUM(qty) 
FROM supl_product 
GROUP BY pcode;
