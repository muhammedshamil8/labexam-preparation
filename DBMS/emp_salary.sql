create table emp_salary(empno varchar(10) primary key,ename varchar(20),dept varchar(20),salary int);

insert into emp_salary values('101','arun','cs',10000);
insert into emp_salary values('102','babu','ec',15000);
insert into emp_salary values('103','chinnu','cs',25000);
insert into emp_salary values('104','david','es',10000);


declare
dept varchar(20);
avge number;
begin
dept:=:enter_the_dept_name;
avge:=avg_sal(dept);
dbms_output.put_line('average salary id'||avge);
end;

create or replace function avg_sal(dep in varchar2)return number is
avg1 number;
dept1 varchar(20);
begin
dept1:=dep;
select avg(salary)into avg1 from emp_salary where dept=dept1;
return avg1;
end;