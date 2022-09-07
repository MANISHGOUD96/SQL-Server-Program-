/* Create Data Base */

create database Employee;

/* use Data base*/

use Employee;  


/* Create the coloumn of table */

create table emp3(eno int, ename varchar(20), esal float(6)); 

/* Print the table */

select * from emp3;

/* insert data */

insert into emp3 values(101,'Manish',1200.2),				
				(1,'Satish',145.2),
				(103,null,null),
				(104,'akash',null),
				(null,null,100),
				(106,null,130);

 select * from emp3;

 
 /* update the data in table*/

 update emp3 set ename='Rahul', esal=18052.25 Where eno=103; 
 select * from emp3;

 update emp3 set eno=102 Where ename='Satish';
 select * from emp3;

  /* update the NULL type data in table*/

 update emp3 set eName='virat' where eName is null;
 select * from emp3

 update emp3 set eSal=15000.52  Where eSal is null;
 select * from emp3;

 update emp3 set  esal=esal+esal*15/100 where eno is null;
 select * from emp3;


 
