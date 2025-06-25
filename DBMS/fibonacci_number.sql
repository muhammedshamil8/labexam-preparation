create or replace procedure fib(num in number)is
first number:=0;
second number:=1;
temp number;
i number;
n number:=num;
begin
dbms_output.put_line('series');
dbms_output.put_line(first);
dbms_output.put_line(second);
for i in 2..n-1
loop
temp:=first+second;
first:=second;
second:=temp;
dbms_output.put_line(temp);
end loop;
end;


declare 
n number:=0;
begin
n:=:enter_limit;
fib(n);
end;