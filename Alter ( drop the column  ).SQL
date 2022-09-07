Create database employee;
use employee;

create table emp1(eNo int,eName varchar(20),eSal float);
insert into emp1 values(101,'Sohan',15000.36),
                                    (102,'Mohan',15025.36),
	                   (103,'Manish',152540.36),
	                   (104,'Manshi',18250.36),
		  (105,'Ragani',19750.56),
		  (106,'Shiva',25364.36);
select * from emp1

/* drop the column */

alter table emp1 drop column eSal;
alter table emp1 drop column eName;

select * from emp1;
