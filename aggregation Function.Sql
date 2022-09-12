create database unio;
use  unio;

/* Aggregation Function */

/* 1.sum, 2.max, 3.min,4.count, 5.avg */ 

Create table emp(eNo int, eName varchar(20),eSal float,eAge int);

insert into emp values(101,'Manish',15542.24,22);
insert into emp values(102,'Vikash',1243.35,28);
insert into emp values(103,'Abhishek',18054.23,22);
insert into emp values(104,'Rahul',13456.2,22);
insert into emp (eNo,eName,eAge)values(105,'Mohan',22);
insert into emp(eNo,eName,eSal) values(106,'shiva',1543.21);

select * from emp

/* Find Sum */

select sum (eSal) as total from emp; 

/* Find Max Vlaue */ 

select max (eSal)  maximum from emp; 

/* Find Min Value */
select min (eSal)  minimum from emp;

/* This is not count Null */

select count (eSal)  count from emp;

/* This is count null value also */

select count(*) CountSe from emp;

/* Find Average Null value */

select avg (eSal)  average from emp; 

/* write in single line*/

select 
sum(eAge) TotalAge, 
max(eAge)MaximumAge,
min(eAge)MinimumAge,
avg(eAge)AverageAge,
count (eNo)CountENo,
count (*) Countincludenull
from emp;