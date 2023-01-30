create database em
use em
drop table  Department
create table Employee(EmpId int,Name varchar(50),Email varchar(30),Phone varchar(20),AdressId int, DeptId int)

create table Adress(AdressId int,Village varchar(100),PinCode int,BuildingNo varchar(10),
District varchar(20),EmpId int)

create table Department(DeptId int,DepCode varchar(20),DepName varchar(50),EmpId int )

insert into Employee  values(101,'Manish Kumar Goud','manish120@gmail.com','9645237896',10,11)
insert into Employee  values(102,'Devid Kumar','devidkumar55@gmail.com','8532451269',11,22)
select * from employee;

insert into Adress  values(10,'Barawa Babu',274563,'BR-152','Kushinagar',101)
insert into Adress  values(11,'Sector-62',124453,'RN-85','Noida',102)
select * from Adress;

insert into   Department values(11,'IT-16','.Net',101)
insert into   Department values(22,'HR-102','Costmer',102)
select * from Department;

select * from employee;
select * from Adress;
select * from Department;

---Create Procedure to Red All Data---

create proc GetAllData
as
begin
select e.EmpId,e.Name,e.Email,e.Phone,ad.AdressId,ad.PinCode,ad.District,d.DeptId,d.DepCode,d.DepName 
from employee as e
Join Adress ad on ad.EmpId=e.EmpId
Inner join Department d on d.EmpId=e.EmpId
end


exec GetAllData

--Create Procedure to insert the value--

create proc Insertvalue(
@EmpId int,@Name varchar(50),@Email varchar(30),@Phone varchar(20),@adressId int, @deptId int,
@Village varchar(100),@PinCode int,@BuildingNo varchar(10),@District varchar(20),
@DepCode varchar(20),@DepName varchar(50)
)
as 
begin
insert into Employee  values(@EmpId,@Name,@Email,@Phone,@adressId,@deptId)
insert into Adress  values(@AdressId,@Village,@PinCode,@BuildingNo,@District,@EmpId)
insert into   Department values(@DeptId,@DepCode,@DepName,@EmpId)
end

exec Insertvalue 103,'Sumit Goud','satish120@gmail.com','8564578232',12,33,'Lakhima',541236,'DE-145',
'Gorakhpur','NT-25','Network'

--Create Procedure to Delete table--

Create proc DeletTable(@EmpId int,@adressId int,@deptId int)
as
begin
delete Employee where EmpId=@EmpId
delete Adress where adressId=@adressId
delete Department where deptId=@deptId
end

exec DeletTable 102,11,22



--Reade data using empNo--

create proc GetAllDataWithId(@EmpId int)
as
begin
select e.EmpId,e.Name,e.Email,e.Phone,ad.AdressId,ad.Village,ad.PinCode,ad.BuildingNo,ad.District,d.DeptId,
d.DepCode,d.DepName 
from employee as e
Join Adress ad on ad.EmpId=e.EmpId
Inner join Department d on d.EmpId=e.EmpId
where e.EmpId=@EmpId order by e.EmpId
end

exec GetAllDataWithId 102


select * from employee;
select * from Adress;
select * from Department;

--Create procedure to update table--

Create proc UpdateTable(@EmpId int,@Name varchar(50),@Email varchar(30),@Phone varchar(20),
@adressId int, @Village varchar(100),@PinCode int,@BuildingNo varchar(10),@District varchar(20),
@deptId int,@DepCode varchar(20),@DepName varchar(50))
as
begin
update Employee set Name=@Name,Email=@Email,Phone=@Phone where EmpId=@EmpId;
update  Adress set Village=@Village,PinCode=@PinCode,BuildingNo=@BuildingNo,District=@District 
where adressId=@adressId
update Department set DepCode=@DepCode,DepName=@DepName where deptId=@deptId
end

exec UpdateTable 101,'Sumit Singh','kumarsumit@gmail.com','7456892321',11,'Lakhima',456312,'GB-45','Gorakhpur'
,22,'cd-15','Software'

--Create Logien Table--

create table logien(Id int not null identity(1,1) primary key,Name varchar(20),Email varchar(30),Password varchar(20))

insert into logien values('Manish Kumar Goud','manishitm120@gmail.com','Manish@123')
insert into logien values('Anuj Yadav','anuj12@gmail.com','Anuj@123')
insert into logien values('Shubham Singh','singhshubham32@gmail.com','Shubham@123')
insert into logien values('Sandeep','sandeep1@gmail.com','sandeep@123')

select * from logien;
drop  table Logien
