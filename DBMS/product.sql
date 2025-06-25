Create table product(pcode int primary key,Pname varchar(20) not null,Catogery varchar(20) not null,Quantity int,Price int);

insert into product values(101,'Lux','Bathsoap',100,25);
insert into product values(102,'Colgate','Toothpaste',50,20);
insert into product values(103,'Ariel','Washingpowder',30,45);
insert into product values(104,'Sunlight','Washingpowder',35,50);
insert into product values(105,'santoor','Bathsoap',30,20);

Select * from product order by pname desc;
Select pcode,pname from product where price between 20 and 50;
Select * from product where catogery in('Bathsoap','Toothpaste','Washingpowder');
select * from product where quantity<100 or quantity>500;
select * from product where pname like 's%';
select * from product where Catogery<>'Toothpaste';
select * from product where pname like '_u%' and Catogery='Washingpowder';
