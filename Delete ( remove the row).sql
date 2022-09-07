/* Create Data Base */

create database Employee;

/* use Data base*/

use Employee;  


/* Create the coloumn of table */

create table emp4(eno int, ename varchar(20), esal float(6)); 

/* Print the table */

select * from emp4;

/* insert data */

insert into emp4 values(101,'Manish',1200.2),				
				(1,'Satish',145.2),
				(103,null,null),
				(104,'akash',null),
				(null,null,100),
				(106,null,130);

 select * from emp4;

  /* Deleat the row in table */

 delete from  emp4 where ename is null; 
 select * from emp4;
