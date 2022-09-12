create database Empl
use Empl

/* Constraints*/

/* 2. Unique Key */

/* insert unique key when create table */

/* not Mention unique Name by Pramgramer */

create table Emp(eno int,ename varchar(20) unique,esal float)

insert into Emp values(101,'Akash',15002.35);
insert into Emp values(102,'Sumit',14573.33);
insert into Emp values(103,'Rahul',24588.32);

insert into Emp values(102,'Akash',12345.31);   /* Error because neme in not unique */

select * from Emp

/* drope the unique key */

sp_help emp

alter table emp drop constraint UQ__Emp__0E8FC1F0D4C99BD5
insert into Emp values(101,'Akash',15002.35);
insert into Emp values(102,'Akash',12345.31);

select * from Emp;
drop table emp;

/* Mention unique Name by Pramgramer */

create table Emp1(eno int,ename varchar(20) constraint QK_Table unique,esal float)

insert into Emp1 values(101,'Akash',15002.35);
insert into Emp1 values(102,'Sumit',14573.33);
insert into Emp1 values(103,'Rahul',24588.32);

insert into Emp1 values(102,'Akash',12345.31);   /* Error because neme in not unique */
select * from Emp1

/* drope the unique key */

sp_help emp1

alter table emp1 drop constraint QK_Table

insert into Emp1 values(101,'Akash',15002.35);
insert into Emp1 values(102,'Akash',12345.31);

select * from Emp1;
drop table emp1;

/* Crate table to Other foemate*/

create table emp2 (eno int,ename varchar(20),esal float,constraint U1 unique(ename)); 
 
 insert into emp2 values(120,'Mansih',12543.21);
 insert into emp2 values(121,'Lokesh',12524.32);
 insert into emp2 values(122,'Mansih',12543.21);
 select * from Emp2;

 /* drope the unique key */

 alter table emp2 drop constraint U1; 

 insert into emp2 values(102,'Rahul',12543.21);
 insert into emp2 values(103,'Lokesh',12524.32);
 insert into emp2 values(102,'Rahul',12543.21);
 select * from Emp2;

/*---------------------------------------------------------------------*/

/* not insert unique key when create table */

/* Mention unique Name by Pramgramer */

create table Emp(eno int,ename varchar(20),esal float)

/* Add unique Key */

alter table Emp add constraint M1 unique (Ename);

insert into Emp values(101,'Akash',15002.35);
insert into Emp values(102,'Sumit',14573.33);
insert into Emp values(103,'Akash',24588.32);   /* Error because neme is not unique */

select * from Emp

/* drope the unique key */

alter table emp drop constraint M1;
insert into Emp values(101,'Akash',15002.35);
insert into Emp values(102,'Akash',12345.31);

select * from Emp;
drop table emp;