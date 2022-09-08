create database Manish
use Manish

/* Constraints*/

/* 1. Not-Null Consteaints */

/* insert not-null when create table*/

create table Emp(eno int not null,ename varchar(20),esal int)

insert into Emp values(102,'Akash',15002.3);
insert into Emp values(Null,'Sumit',12345.3); /*  Error Not Enter the null value*/

select * from Emp

drop table emp;

/*insert not-null after create table*/

create table Emp1(eno int ,ename varchar(20),esal int);

alter table Emp1 alter column eno int not null;

insert into Emp1 values(102,'Akash',15002.3);
insert into Emp1 values(Null,'Shubham',18752.3); /* Not Enter the null value*/

select * from Emp1;

drop table Emp1;

/* Again Make nullable value to take null value */

alter table Emp2 alter column eno int null; 
insert into Emp2 values(Null,'Shubham',18752.3);

select * from Emp2;

drop table Emp2;

/* If table is null We pass null value*/ 

create table Emp3(eni int null,ename varchar(20),esal int)

insert into Emp3 values(null,'Akash',15002.3);
insert into Emp3 values(102,'Sohan',15254.33);

select * from Emp3;
