/* Create Data Base */

create database Employee;

/* use Data base*/

use Employee;  

/* Create the column of table */

create table emp(eno int ,ename varchar (20), esal float);

/* insert the value in table */

insert into emp values(101,'Manish',1500.65);
select * from emp;

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

/* Create the column of table */

create table emp3(eno int, ename varchar(20), esal float(6)); 
select * from emp3;


/* insert multiple data in using single Line line */

insert into emp3 values(101,'Manish',1200.2),				
				(1,'Satish',145.2),
				(103,null,null),
				(104,'akash',null),
				(null,null,100),
				(106,null,130);

 select * from emp3;

 
