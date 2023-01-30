create database BD
use BD

Create table emp(eNo int not Null Identity(1,1) constraint p primary key,eName varchar(20),eSal float,eDep varchar(10),eAge float)

insert into emp values('Mainsh',15200.3,'IT',16.2,12354698),('Sohan',13250.6,'Sales',12.6,5469812)
,('Suresh',18235.86,'HR',14.3,15463542),('Mohan',1200.5,'Suport',22.5,1246422),
('Lokesh',14230.4,'.Net',16.3,24569873)
select * from emp

update emp set eName='Subham',eSal=2635.3,eDep='Berojdar',eAge=3.2 where eNo=1;
drop table emp
alter table emp add eAdhar int 
insert emp(eName,eSal,eDep,eAge,eAdhar)values('Mohan',1200.5,'Suport',22.5,1246422)
delete emp where eNo=1; 