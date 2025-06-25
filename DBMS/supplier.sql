create table supplier (supcode char(3) primary key ,sname varchar(10) , City varchar(10));

create table product (pcode char(3) references supplier (supcode), pcode char(3) references product (pcode), oty INT );

create table supl_product(supcode references supplier(supcode),pcode references product(pcode), qty eferences product(oty))

INSERT INTO supplier values (‘s1’’Raju’,’calicut’), (‘s2’,’sheela,’’thissur’),
(‘s3’,’Aysha’,’kochi’),(‘s4’,’Anees’,’Tirur’),(‘s5’,’Lisa’,’calicut’),(‘s6’,’zara’,’tirur’);

select * from supplier;

INSERT INTO Product VALUES ('p1', 'Soap'), ('p2', 'Rice'), ('p3', 'Salt'), ('p4', 'Sugar'), ('p5', 'Wheat'), ('p6', 'Colgate'), ('p7', 'Chilly');

SELECT * FROM Product;

INSERT INTO Supl_Product VALUES ('s1', 'p1', 34), ('s1', 'p2', 20), ('s2', 'p4', 5), ('s3', 'p3', 10), ('s2', 'p7', 10), ('s3', 'p1', 12);

SELECT * FROM Supl_Product;

-- a)
SELECT a.Supcode, b.Supcode, b.City 
FROM Supplier a, Supplier b 
WHERE a.City = b.City AND a.Supcode < b.Supcode;

-- b)
SELECT Sname 
FROM Supplier 
WHERE Supcode IN (SELECT Supcode FROM Supl_Product WHERE pcode = 'p2');

-- c)
SELECT pcode 
FROM Supl_Product 
GROUP BY pcode 
HAVING COUNT(pcode) > 1;

-- d)
SELECT Supcode 
FROM Supplier 
WHERE City = (SELECT City FROM Supplier WHERE Supcode = 's1');

-- e)
SELECT Sname 
FROM Supplier 
WHERE Supcode IN (SELECT Supcode FROM Supl_Product WHERE pcode = 'p1');

-- f)
SELECT COUNT(DISTINCT Supcode) 
FROM Supl_Product;

-- g)
SELECT pcode, SUM(Qty) 
FROM Supl_Product 
GROUP BY pcode;
