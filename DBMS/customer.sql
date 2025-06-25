       Create a table customer (cust_novarchar(5), cust_namevarchar(15), age number, phone varchar(10) )
a) insert into customer values('001','manu',21,7845129632);
    insert into customer values('002','babi',29,1245789632);

b) alter table customer add dbirth date;
c) create table custphone as(select custname,phone from customer);
d) alter table customer drop column age;
e) alter table customer modify custname varchar(25);
f) delete from customer;
g) alter table customer rename to cust;
h) drop table cust;