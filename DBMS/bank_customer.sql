Create table bank_customer(accno varchar(20) primary key,cust_name varchar(20),place varchar(20));
Create table deposit(accno references bank_customer(accno),depositno varchar(20),damount number);
Create table loan(accno references bank_customer(accno),loanno varchar(20),lamount number);
insert into bank_customer values('1002','arun','calicut');
insert into bank_customer values('1003','babi','kochi');
insert into bank_customer values('1004','varun','calicut');
insert into bank_customer values('1001','karthi','kottayam');

insert into deposit values('1002','d1002',10000);
insert into deposit values('1004','d1004',20000);
insert into loan values('1003','l1003',25000);
insert into loan values('1004','l1004',35000);

a) select * from bankcustomer;
b) select cust_name,accno from bank_customer where accno in (select accno from deposit) and accno not in(select accno from loan);
c) select cust_name,accno from bank_customer where accno in (select accno from loan) and accno not in(select accno from deposit);
d) select cust_name,accno from bank_customer where accno in (select accno from loan) and accno in(select accno from deposit);
e) select cust_name,accno from bank_customer where accno not in (select accno from loan) and accno not in(select accno from deposit);