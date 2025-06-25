create table exam_result(rollno varchar(20) primary key,avg_score int,grade varchar(3));
insert into exam_result(rollno,avg_score)values('001',90);
insert into exam_result(rollno,avg_score)values('002',60);
insert into exam_result(rollno,avg_score)values('003',76);

select * from exam_result;

declare
cursor c is select * from exam_result;
a exam_result.avg_score%type;
g exam_result.grade%type;
begin
for i in c loop
a:=i.avg_score;
if(a between 90 and 100) then
g:='A';
elsif(a between 75 and 89) then
g:='B';
elsif(a between 60 and 74) then
g:='C';
elsif(a between 50 and 59) then
g:='D';
elsif(a>50) then
g:='E';
else
g:='fai';
end if;
update exam_result set grade=g where rollno=i.rollno;
end loop;
for j in c loop
dbms_output.put_line(j.rollno||' '||j.avg_score||' '||j.grade);
end loop;
end; 
