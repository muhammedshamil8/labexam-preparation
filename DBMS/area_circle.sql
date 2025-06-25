create table areas (radius number(5,2),area number(5,2));
Table created
declare
r number;
a number;
begin
for r in 3..7
loop
a:=3.14*r*r;
insert into areas values(r,a);
end loop;
end;

select * from areas;