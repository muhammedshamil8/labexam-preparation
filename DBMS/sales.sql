create table sales_man(sales_man_no INT PRIMARY KEY,S_name VARCHAR(10) NOT NULL,place varchar(10), phone numberic(10) UNIQUE);
CREATE TABLE sales_order(order_no INT PRIMARY KEY , order_date date NOT NULL, order_satus char(10) NOT NULL check(order_status IN(‘inprocess’,’Fulfilled’,’Cancelled’,’Backorder’)),Salesman_no INT references sales_man(salesman_no),deltype char(1) check(del_type = ‘F’ or del_type = ‘p’));
a) INSERT INTO sales_man VALUES (101,’Ananth’,’feroke’,8111853677);
INSERT INTO sales_man VALUES (102,’Fariz’,’Chungam’,8111853677);
INSERT INTO sales_man VALUES (103,’Shin’,’Chelari’,9207264712);
INSERT INTO sales_man VALUES (104,’Asla’,’university’,8111853677);
INSERT INTO sales_man VALUES (105,’Jinu’,’Tirur’,9539534712);

select * from sales_man;

insert into sales_order values(1,’01-01-17’,’inprocess’ 101,’F’),(2,’03-02-17’,’Fulfilled’,102,’F’),(3,’03-03-17’,’fullfilled’,103,’p’),(4,03-03-17’,’cancelled’ , 104 , ‘F’),(5,’05-03-17’,’Backorder’,105,’p’);

select * from sales_order;

b)ALTER TABLE sales_man DROP constraint sales_man_p key cascade;

c) alter table sales_order drop constraint sales_order_del_type_ check;
alter table sales_order drop constraint sales_order_status_check;

d)ALTER TABLE sales_man ADD primary key (salesman_no);

e)ALTER TABLE sales_order ADD FOREIGN KEY (salesman_no) REFERENCES sales_man(salesman_no);
ALTER TABLE sales order ADD CHECK (del_type = ‘F’ oR del_type = ‘p’),
ALTER TABLE sales order ADD CHECK [odder_status.IN(‘inprocess’,’fulfilled’,’cancelled’,’Backorder’));

