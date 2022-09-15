create Database M
use  M;

/*....Create Table of Emp....*/

create table emp(empNo int,empName varchar(20));

insert into emp values
(101,'Manish'),
(102,'Suresh'),
(103,'Mahesh'),
(104,'Ravi'),
(105,'Rahul');

Select * from emp;

/*....Create Table of Dep....*/

create table dep(depNo int,depName varchar(20));

insert into dep values
(104,'Seals'),
(102,'Software'),
(103,'Account');

Select * from dep;

/*..This query is use to [ CROSS JOIN ] of the two table..*/

/*..............First query...............*/ 
--There we Use Comma--

select empNo as No,empName as Name,depName as DName from emp,dep; 

/*..............Second query...............*/ 
--There we Name  CROSS JOIN --

select empNo as No,empName as Name,depName as DName from emp CROSS JOIN dep; 