create table studnt(rollno number(3),name varchar(2),m1 number(3),m2  number(3),m3  number(3),m4 number(3),m5 number(3),tot number(3),avrg number(3));

create or replace trigger tr1 
before insert on studnt 
for each row 
begin 
:new.tot:=:new.m1+:new.m2+:new.m3+:new.m4+:new.m5;
:new.avrg:=:new.tot/5; 
end;
insert into studnt  values(101,'SM',67,89,99,67,76,null,null);
insert into studnt  values(102,'SM',60,80,90,60,70,null,null);