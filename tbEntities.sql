create database tb;
use tb;

create table emp(No int not null identity(101,1) constraint p Primary key,Name varchar(20),Age float,Selary float,Dep varchar(15))
insert into emp values('Satish',15.3,15362.30,'IT')
insert into emp values('Rohan',16.5,178362.23,'Sales')
insert into emp values('Manoj',25.7,10362.52,'HR')
insert into emp values('Lokesh',36.25,115643.3,'PM')
drop table emp
select * from emp


