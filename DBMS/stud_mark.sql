create table stud_mark(regno varchar(10) primary key,sname varchar(20),avg_mark int);

insert into stud_mark values('101','arun',89);

insert into stud_mark values('102','babi',74);

insert into stud_mark values('103','chimmu',50);
insert into stud_mark values('104','david',74);

declare
cursor c is select * from stud_mark;
a stud_mark.avg_mark%type;
g varchar(20);
dis number:=0;
first number:=0;
second number:=0;
third number:=0;
fail number:=0;
begin
for i in c loop
a:=i.avg_mark;
if(a between 90 and 100) then
g:='Distinction';
dis:=dis+1;
elsif(a between 75 and 89) then
g:='First Class';
first:=first+1;
elsif(a between 60 and 74) then
g:='Second Class';
second:=second+1;
elsif(a between 50 and 59) then
g:='Third Class';
third:=third+1;
else
g:='fail';
fail:=fail+1;
end if;
end loop;
find(dis,first,second,third,fail);
end; 

create or replace procedure find(dis1 in number,first1 in number,second1 in number,third1 in number,fail1 in number)is
dis number:=0;
first number:=0;
second number:=0;
third number:=0;
fail number:=0;
begin
dis:=dis1;
first:=first1;
second:=second1;
third:=third1;
fail:=fail1;
dbms_output.put_line('total no of distinction'||dis);
dbms_output.put_line('total no of first class'||first);
dbms_output.put_line('total no of second class'||second);
dbms_output.put_line('total no of third class'||third);
dbms_output.put_line('total no of failures'||fail);
end;