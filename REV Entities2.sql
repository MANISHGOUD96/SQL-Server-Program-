use rev
create table Employee(Id int not null identity(101,1) constraint p Primary key,Name varchar(20),Age float,
Adress varchar(20),Company varchar(20), Salary float,Email varchar(25),Phone varchar(10),Addhar varchar(20))

drop table Employee
select * from Employee
insert into employee values('Stish',17.3,'Gorkhpur','Cube',20000.3,'stish13@gmail.com','9638527410',
'123546981235') 

insert into employee values('Stish',17.3,'Gorkhpur',Null,Null,'stish13@gmail.com','9638527410','123546981235') 

create table emplogien(Id int not null identity(10,1) constraint p1 primary Key,Name varchar(20),
Email varchar(30),password varchar(15))

insert into emplogien values('Manish Kumar Goud','manishitm120@gmail.com','Manish@123')
insert into emplogien values('Narender','narender123@gmail.com','Narender@123')
insert into emplogien values('Devid','devid@gmail.com','Devid@123')
insert into emplogien values('Anuj','anuj@gmail.com','anuj@123')
insert into emplogien values('Saneddp','sandeep@gmail.com','Sandeep@123')
insert into emplogien values('Rahul Kumar','kumarrahul@gmail.com','Rahul@123')

select * from emplogien;

delete employee where Name='Shubham Kumar';