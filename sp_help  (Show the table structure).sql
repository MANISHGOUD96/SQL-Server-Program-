/* use Data base*/

use Employee;  


/* Create the coloumn of table */

create table emp4(eno int, ename varchar(20), esal float(6)); 

/* Print the table */

select * from emp4;

/* Show the structure of table */

sp_help emp4;
