create database unio;
use  unio;

/* Sql Operaters */

/* 1.UNION, 2.UNION ALL, 3.INTERSECT,4.MINUS */ 

create table A(first int)
create table B (second int)

insert into A values(1),(2),(3),(4),(5),(10),(20); 
insert into B values(1),(2),(3),(4),(5),(30),(40); 

select * from A;
select * from B;

select first from A UNION select second from B; --Union--
select first from A UNION All select second from B; --Union All--
select first from A INTERSECT select second from B; --Intersect--
select first from A EXCEPT select second from B; --Minus (A minus B)--
select second from B EXCEPT select first from A; --Minus (B minus A)--
