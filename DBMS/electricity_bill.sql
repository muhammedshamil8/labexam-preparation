create table ebill(cno number(5),cname varchar(25), uc number,billamt number);
insert into ebill(cno,cname) values(101,'appu');
insert into ebill(cno,cname) values(102,'Neenu');
insert into ebill(cno,cname) values(103,'Amrutha');
insert into ebill(cno,cname) values(104,'Diya');
insert into ebill(cno,cname) values(105,'Aswin');

create or replace function calculate(cno in number,unit in number) return number is 
amt number;
begin 
amt:=unit*3;
return amt;
end;


declare
cuno number:=:cuno;
unit number:=:unit;
a number;
begin
a:=calculate(cuno,unit);
update ebill set uc=unit,billamt=a where cno=cuno;
end;

select * from ebill;