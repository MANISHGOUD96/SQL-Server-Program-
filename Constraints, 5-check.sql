create database mk;
use mk;

/* Constraints*/

/* 5. check */

/*  ensert check when create table */

create table emp(eno int, ename varchar(20),esal float, check (esal>0));

insert into emp values(101,'Sujeet',21250.36);
insert into emp values(102,'Mukesh',Null);
insert into emp values(103,'Rahul',-15403.23); 
insert into emp(eno,ename)values(104,'Rohan');
insert into emp values(105,'Mohan',3254.36);
insert into emp values(106,'sohan',00);



select * from emp;
drop table emp




