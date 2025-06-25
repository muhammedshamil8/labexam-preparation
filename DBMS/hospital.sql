Create table hospital(doctorid varchar(20),dname varchar(20),dept varchar(20),qualification varchar(20),experience int);

Insert into hospital values(‘d001’,’arun’,’ent’,’mbbs’,5);
Insert into hospital values('d003','arun','skin','mbbs',6);

b) select * from hospital;
c)  select * from hospital where qualification='MD';
d) select dname from hospital where experience>5 and qualification<>'md';
e) select dname from hospital where dept='skin';
f) update hospital set experience=5 where doctorid='d003';
g)delete from hospital where doctorid=’d005’;