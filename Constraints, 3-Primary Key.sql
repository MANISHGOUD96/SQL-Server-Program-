create database Empl
use Empl

/* Constraints*/

/* 3. Primary Key */

/* insert primary key when create table */

/* not-Mention primary key Name by Pramgramer */

create table Emp(eno int,ename varchar(20) primary key,esal float)


insert into Emp values(101,'Akash',15002.35);
insert into Emp values(102,'Sumit',14573.33);
insert into Emp3 values(103,null,14343.63);    /* Error because primary key is not null */
insert into Emp values(104,'Akash',24588.32); /* Error because neme is not primaey */

select * from Emp

/* drope the primary key */
sp_help Emp;

alter table emp drop constraint PK__Emp__0E8FC1F14B74A594;
insert into Emp values(101,'Akash',15002.35);
insert into Emp values(102,'Akash',12345.31);

select * from Emp;

/* Crate table to Other foemate*/

/* Mention primary key Name by Pramgramer */

create table emp2 (eno int,ename varchar(20),esal float,constraint U1 primary key(ename)); 
 
 insert into emp2 values(120,'Mansih',12543.21);
 insert into emp2 values(121,'Lokesh',12524.32);
 insert into emp2 values(null,'Mansih',12543.21);
 select * from Emp2;

 /* drope the primary key */

 alter table emp2 drop constraint U1; 

 insert into emp2 values(102,'Rahul',12543.21);
 insert into emp2 values(103,'Lokesh',12524.32);
 insert into emp2 values(102,'Rahul',12543.21);
 select * from Emp2;



/* not insert primary key when create table */

create table Emp3(eno int,ename varchar(20),esal float)

/* Add add Primary Key */

alter table Emp3 alter column ename varchar(20) NOT NULL
alter table Emp3 add constraint P1 primary Key (ename);

insert into Emp3 values(101,'Akash',15002.35);
insert into Emp3 values(102,'Sumit',14573.33);
insert into Emp3 values(103,null,14543.63);    /* Error because primary key is not null */
insert into Emp3 values(103,'Akash',24588.32); /* Error because neme is not primary */

select * from Emp3

/* drope primary key */

alter table Emp3 drop constraint P1;

insert into Emp3 values(101,'Akash',15002.35);
insert into Emp3 values(102,'Akash',12345.31);
insert into Emp3 values(null,'Akash',15002.35);

select * from Emp3;
drop table Emp3;