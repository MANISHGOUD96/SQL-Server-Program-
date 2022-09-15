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

/*..This query is use to [ EQUI JOIN ] of the two table..*/

/*..............First query...............*/ 
--There we Use Comma--
select empNo,empName,depName from emp,dep where emp.empNo=dep.depNo;

--Using Alise Name--
select empNo,empName,depName from emp E,dep D where E.empNo=D.depNo ;

/*..............Second query...............*/ 
--There we Name  INNER JOIN or JOIN --

select empNo,empName,depName from emp INNER JOIN dep ON emp.empNo=dep.depNo;
select empNo,empName,depName from emp E JOIN dep D ON E.empNo=D.depNo ;