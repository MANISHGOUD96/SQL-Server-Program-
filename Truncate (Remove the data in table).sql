/* Create Data Base */

create database Employee;

/* use Data base*/

use Employee;  

/* Create the column of table */

create table emp2(eNo int,eName varchar(50),eSal float); 
select * from emp2;

/* insert multiple data in using multiple line */

insert into emp2 values(101,'Satish',1500.5);
insert into emp2 values(null,'Manish',1605.5);
insert into emp2 values(103,'Akash',18425.5);
insert into emp2 (eNo) values(101);
insert into emp2 (eNo,eName)values(101,'Sumit');

select * from emp2;

/* Remove the data into table using truncate */

truncate table emp2;
select * from emp2;