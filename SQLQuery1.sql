create database testdb
use testdb
create table tb_employee(id int identity,Name varchar(20),Fname varchar(20), email  varchar(20))
select * from tb_employee
insert into tb_employee(Name,Fname,email)values('Rahul','Brikishor','9119678381'),
('Suman','Rajkumar','7080772010'),
('Dev','Brikishor','7310955638'),
('Manohar','Brikishor','9116802222'),
('Sourabh','prem','9935331562'),
('Abhishek','premprakash','10002500'),
('Suraj','lovekumar','500482032')

select * from tb_employee
update tb_employee set Fname='Prem yadhav' where id=5
update tb_employee set email='abhi@gamil.com' where id=6
update tb_employee set email='Rahul@gmail'where id=1
update tb_employee set email ='Suman@12gamil.com' where id=2
select * from tb_employee
delete tb_employee where id=7
delete tb_employee where Name='Abhishek'

alter table tb_employee add phone varchar(12)
alter table tb_employee drop email
truncate table tb_employee
select * from tb_employee
drop table tb_employee

select fname from tb_employee where id=2
select Name ,email from tb_employee where id=2
select * from tb_employee where Name like '%r'
select *from tb_employee where Fname like'r%'
select name from tb_employee where Fname like'r%'

create proc show
as
begin
select * from tb_employee
end
show

alter proc show
as 
begin
select name,email from tb_employee
select * from tb_employee
end
show

select * from tb_employee

create table customer( Emp_id int identity, Emp_name varchar(20), Manger_id int)
insert into customer(Emp_name,Manger_id)values('Rahul',2),
('suma',1),
('aasiya',3),
('dev',2),
('manohar',1)

select * from customer

select A.Emp_name As Manger,B.Emp_name  As Employee from customer as A 
inner join customer as B on
A.manger_id= B.Emp_id


select A.Emp_name as Manger,B.Emp_name as Employee from customer as A
inner join customer as B on 
A.manger_id=B.Emp_id

select Name from tb_employee inner join customer on 
tb_employee.id=customer.Emp_id

select distinct(Name) from tb_employee
select Name from tb_employee order by Name 