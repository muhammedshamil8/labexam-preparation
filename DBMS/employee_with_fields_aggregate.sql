   Create table employee(empid int primary key,ename varchar(20) not null,salary int,dept varchar(20),age int);

insert into employee values(101,'arun',10000,'sales',21);
insert into employee values(102,'babu',25000,'purchase',21);
insert into employee values(103,'chinnu',35000,'purchase',29);
insert into employee values(104,'david',89000,'sales',30);
    a) Select count(*) from employee;
    b) Select age, ename from employee where age in( select max(age) from employee group by dept);
    c) Select dept,avg(age) from employee group by dept;
    d) Select dept,avg(salary) from employee group by dept;
    e) Select min(salary) from employee;
    f) Select count(*) from employee where dept=’purchase’;
    g) Select max(salary) from employee where dept=’sales’;
    h) Select max(salary)-min(salary) from employee;
