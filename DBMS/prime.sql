create or replace function check_prime(no in number)return varchar is 
ans varchar(15);
n number;
begin
if(no = 2)then
ans:='prime';
else
n:=no/2;
for i in 2..n
loop
if(mod(no,i)=0)then
ans:='not prime';
exit;
else
ans:='prime';
end if;
end loop;
end if;
return(ans);
end;

declare
a number:=0;
begin
a:=:enter_the_number;
dbms_output.put_line(check_prime(a));
end;
