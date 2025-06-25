Create table employee1(empname varchar(20),city varchar(20));
Create table works (empname varchar(20),cmpname varchar(20),salary int);
Create table company(cmpname varchar(20),city varchar(20));
Create table manages(empname varchar(20),managname varchar(20));


Insert into employee1 values('raju','ernakulam');
Insert into employee1 values('rani','calicut');
Insert into employee1 values('ram','malappuram');
Insert into employee1 values('ramu','malappuram');
Insert into employee1 values('sonu','malappuram');


Insert into works values('raju','infosis',25000);
Insert into works values('rani','infosis',35000);
Insert into works values('ram','wipro',25000);
Insert into works values('ramu','wipro',20000);
Insert into works values('sonu','wipro',20000);


Insert into company values('infosys','ernakulam');
Insert into company values('tcs','calicut');
Insert into company  values('wipro','banglore');
Insert into company values('wipro','ernakulam');

Insert into manages values('raju','govind');
Insert into manages values('rani','govind');
Insert into manages values('ram','goudam');
Insert into manages values('ramu','goutham');

select empname from works where cmpname='infosis';

Select empname,city from employee1 where empname in (select empname from works where cmpname='wipro'); 

Select empname,city from employee1 where empname in (select empname from works where cmpname='infosis' and salary>10000); 

Select empname from employee1 where city in(select city from employee1)and city in(select city from company);

select empname from works where cmpname!='wipro';

Select cmpname from works group by cmpname having count(distinct empname)>=all(select count(distinct empname) from works group by cmpname);