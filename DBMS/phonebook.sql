Create table phonebook1(pname varchar(20),mob number);


insert into phonebook1 values(‘kathu’,3343544);

insert into phonebook1 values('arun',9685741236);

Create table phonebookdel1(pname varchar(20),mob number,mdate date);


Create or replace trigger insertphonebook
after delete on phonebook1
for each row
begin
insert into phonebookdel1 values( :old.pname,:old.mob,sysdate );
end;

delete from phonebook1 where mob='9685741236'; 

select * from phonebookdel1;