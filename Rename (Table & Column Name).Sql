Create database employee;
use employee;

create table emp(eNo int,eName varchar(20),eSal float);
insert into emp values(101,'Sohan',15000.36),
                       (102,'Mohan',15025.36),
                       (103,'Manish',152540.36),
	     (104,'Manshi',18250.36),
	     (105,'Ragani',19750.56),
	     (106,'Shiva',25364.36);
select * from emp

/* Rename Table Name  */

sp_rename 'emp','empDET' 

/* Rename Table Name  */

sp_rename 'empDET.eSal','e.Age' 

select * from empDET;
