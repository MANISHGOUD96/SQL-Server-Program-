create database mk;
use mk;

/* Constraints*/

/* 4. Default */

/* insert default when create table */

create table emp(eno int, ename varchar(20),esal float default 15000.32);

insert into emp values(101,'Sujeet',21250.36);
insert into emp values(102,'Mukesh',Null);
insert into emp values(103,'Rahul'); /* Not mension the value supplid*/
insert into emp(eno,ename)values(104,'Rohan');

select * from emp;
drop table emp

