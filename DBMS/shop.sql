create table shop(id number(4),name varchar(20),price number(10),quantity number(10));
table created
insert into shop values(1,'Book',25,30);
insert into shop values(2,'Pen',10,20);
insert into shop values(3,'Chart',10,10);
insert into shop values(4,'Box',35,10);
insert into shop values(5,'Pencil',15,25);

create or replace procedure sale(i in number, q in number) is 
begin
update shop set quantity =q where id=i;
end;
 procedure created
declare 
i number(4):=:Enter_Item_Id;
q number(10):=:Enter_new_quantity;
begin
sale(i,q);
end;
select * from shop;