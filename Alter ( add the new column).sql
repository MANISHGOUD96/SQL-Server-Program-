
create database Manish;
use Manish; 
drop database Manish;

create table emp(eNo int,eName varchar(20),eSal float);
insert into emp values(101,'Sohan',15000.36),
                      (102,'Mohan',15025.36),
(103,'Manish',152540.36),
(104,'Manshi',18250.36),
(105,'Ragani',19750.56),
(106,'Shiva',25364.36);
select * from emp

/* Add the new Coloumn */

alter table emp add eSel int;
alter table emp add adress int; 

select * from emp