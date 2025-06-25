create table salary(empno number(10),name varchar(20),basic number(6));

insert into salary (empno,name,basic)values(101,'Arya',1000);
insert into salary (empno,name,basic)values(102,'Beena',1500);
insert into salary (empno,name,basic)values(103,'Seema',1503);
insert into salary (empno,name,basic)values(104,'Vinu',2600);
insert into salary (empno,name,basic)values(105,'Hema',3400);

declare 
cursor c is select *from salary;
emp salary % rowtype;
da number(10,2);
gross number(10,2);
pf number(10,2);
net number(10,2);
asal number(10,2);
tax number(10,2);
begin
open c;
dbms_output.put_line('no    name     basic	da	gross	 pf	net	asal	tax');
loop
fetch c into emp;
exit when c % notfound;
da:=0.4*emp.basic;
pf:=0.10*emp.basic;
gross:=emp.basic+da;
net:=gross-pf;
asal:=12*net;
if asal<100000 then
tax:=0;
elsif asal>100000 and asal<150000 then
tax:=(asal-100000)*0.10;
elsif asal>150000 and asal<250000 then
tax:=(asal-150000)*.20+(50000*.10);
else
tax:=(asal-250000)*.20+(50000*.1)+(100000*.2);
end if;
dbms_output.put_line(emp.empno||'  '||emp.name||'	'||emp.basic||'  '||da||'	'||gross||'	'||pf||'  '||net||'  '||asal||'  '||tax);
end loop;
end;