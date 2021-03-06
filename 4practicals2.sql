drop tABLE employee;
create table employee(empid number(3) unique,ename varchar(10), eaddr varchar(20),designation varchar(20), dept varchar(5), salary number(5),joindate date); 
desc employee;
insert into employee values(101,'Anu','xyz','clerk','cse',10000,'08-APR-2012');
insert into employee values(102,'Bejoy','abc','hr','me',6000,'05-DEC-2007');
insert into employee values(103,'Maya','pqr','manager','civil',25000,'10-FEB-2010');
insert into employee values(104,'Anish','cde','executive','ece',15000,'05-NOV-2003');
insert into employee values(105,'jain','efg','manager','eee',7000,'01-JAN-2010');
select * from employee;
select ename,designation,salary from employee;
select empid from employee where salary>10000;
select ename,designation from employee where dept='cse';
select * from employee where ename like '%a';
select AVG(salary) "Average" FROM employee group by dept;
select ename,dept from employee where designation='manager';
delete from employee where salary between 5000 and 7500;
select * from employee;
update employee set designation='asst manager' where(designation='executive' and joindate<'01-JAN-2011');
select ename,0.1*salary "increment" from employee;