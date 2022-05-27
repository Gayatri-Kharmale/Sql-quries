select * from Emp


--display first_name and last_name using alias First Name and Last Name from emp table
select  firstname 'First Name' ,lastname ' Last Name' from Emp;

--to get unique department from emp table
select distinct deptname from Emp

--to get all the employees details from emp table disply in decending order
select * from Emp
order by empid desc

--to display emp details with salary ,calculate the pf as 12% of basic salary and display as separate column
select salary ,salary=salary*0.12 from Emp

--to get total saralies payble to all emp from emp table
select sum(salary) as sumsalary from Emp 

--to get max and min saraly of emp
select max (salary)as maxsalary from Emp
select min (salary)as minsalary from Emp

--get number of emp are working in company
select count(*)from Emp

--get the number of unique designation in the company
select count(distinct empid)from Emp

--display empname as "Name in upper case
select UPPER(firstname) from Emp

--to get first 10 records from the emp emp table
select TOP 10* from Emp




------------------------------------------------------------customer-----------------------------------------------------------

create table customer(
cid int primary key,
postalcode int,
cname varchar(20),
city varchar(20),
country varchar(20),
price int 
)
--drop table customer
select * from customer

insert into   customer values(1,121110,'ajay','london','norway',34000)
insert into   customer values(2,121111,'deepak','berlin','norway',36000)
insert into   customer values(3,121112,'deepa','london','france',44000)
insert into   customer values(4,121113,'swpana','nashik','norway',34000)
insert into   customer values(5,121114,'pana','pune','norway',23000)
insert into   customer values(6,121115,'man','berlin','india',37000)
insert into   customer values(7,121116,'sanu','london','norway',40000)
insert into   customer values(8,121117,'sanavi','nagar','india',67000)
insert into   customer values(9,121118,'ruchi','mumbai','UK',89000)
insert into   customer values(10,12119,'yok','manchar','USA',56000)
insert into   customer values(11,121110,'rahul','pune','india',12000)
insert into   customer values(12,121111,'rohiy','nagapur','UK',46000)
insert into   customer values(13,121112,'vaishav','nagar','norway',68000)
insert into   customer values(14,121113,'ram','london','norway',90000)

insert into   customer values(15,121114,'sham','mumbai','norway',26000)

insert into   customer values(16,121110,'ajay','bhosari','norway',87000)

--select city coulumn from customer table
select city from customer

--select values from country in customer table
select country from customer

--select city coloumn has the value london
select *from customer where city='london'

--used not keyword to select all records where citry is not in berlin
select *from customer where city not in('berlin')

--select all the record where customer id column has value 12
select *from customer where cid=12

--select all the records where city coloumn has the value berlin and the postal code column has the value 121110
select * from customer where city='berlin' and postalcode=121110

--select all records where city has the value  berlin or london
select * from customer where city='berlin' or  city='london'

--select all the records  , sort the result albhabetically by the coloumn city
select * from customer
order by city

--select all the records  , sort the result reverse albhabetically by the coloumn city
select * from customer
order by city desc


--select all the records  , sort the result albhabetically by the coloumn country then city
select * from customer
order by country, city

--select all record where postalcode is  empty
select * from customer
where postalcode is null

--select all record where postalcode is not empty
select * from customer
where postalcode is not null


--set the value of city to oslo but only the ones where the country coulumn value is norway
update customer set city='oslo' where country ='norway'


--delete all the records from customer where country value is norway
delete from customer where country='norway'

--use the min function select the records with the smallest value price record
select min(price) as minprice from customer

--use an sql function to select the records with the highest value of the price col
select max(price) as maxprice from customer

--use to correct function to returns the number of records that have price  value set to 20
select count(*)from customer where price=20

--use an sql function to calculate the avg price to all the product
select avg(price)as avgprice from customer

--select all records where the value of city  staet with the letter a
select * from customer where city like'a%'

--select all records where the value of city  end with the letter a
select * from customer where city like'%a'

--select all records where the value of city  contains letter a
select * from customer where city like'%a%'

--select all records where the value of city  start letter a and end with b
select * from customer where city like'a%b'

--select all records where the value of city  does not stat with the letter a
select * from customer where city not like'a%'


---select all records where second letter of city is an a
select * from customer where city like'-a%'



---select all records where first letter of city is an a or c or s 
select * from customer where city like'[acs]%'

-----select all records where first letter of city is anything from a and f
select * from customer where city like'[a-f]%'



-----select all records where first letter of city is not   a or f or c
select * from customer where city not like'[a-f-c]%'

--use in operator to select all the records where the country is either norway or france
select * from customer where country in('norway','france')

--use in operator to select all the records where the country is not either norway or france
select * from customer where country  not in('norway','france')

--use between operator to select all the records where value of the price between 20000 and 50000

select * from customer where price between 20000 and 50000

--use between operator to select all the records where value of the price not between 20000 and 50000

select * from customer where price not between 20000 and 50000

--when displaying the customers table make alias of the postalcode coulumn the column should be called pno insted 
select   postalcode as pno from customer

--list the number customers in each country
select count(cid)country from customer

--list of the customers in each country oredered by the country with most customers first
select count(cid) country  from customer group by country order by count(cid)desc

--write a correct sql statement to create new database called testDB
create database testDB

--write a correct sql statement to delete database called testDB
drop database testDB

--write a column of type date called birthday in person table
alter table person add  birthday datetime


--delete the column birthday from the person table 
alter table person drop column birthday 


----------------------------------customers, saleman, orders----------------------------------------------------------------




create table customers(
c_id int primary key,
cname varchar(20),
city varchar(20),
grade varchar(20),

)
select * from customers 
insert into   customers values(1,'arati','manchar','A')
insert into   customers values(2,'swati','nagapur','C')
insert into   customers values(3,'rahul','pune','D')
insert into   customers values(4,'vaishav','mumbai','A')
insert into   customers values(5,'rohit','manchar','B')

alter table  customers add  salemanid int
alter table  customers add constraint fk_customre foreign key(salemanid) references saleman(salemanid)

update  customers set salemanid=1 where c_id in (1)
update  customers set salemanid=2 where c_id in (2)
update  customers set salemanid=3 where c_id in (3)
update  customers set salemanid=4 where c_id in (4)
update  customers set salemanid=5 where c_id in (5)
create table saleman(
salemanid int primary key,
salemanname varchar(20),
salemancity varchar(20),
salmancommision int

)
select * from saleman
insert into saleman values(1,'rohit','manchar',23000)
insert into saleman values(2,'rohan','pune',33000)
insert into saleman values(3,'sham','pune',78000)
insert into saleman values(4,'vijay','manchar',45000)
insert into saleman values(5,'ook','mumbai',67000)

create table order1 (
oid int primary key ,
pamt int ,
odate datetime 
)
drop table order1
select * from order1

update  order1 set c_id=1 where oid in (1)
update  order1 set c_id=2 where oid in (2)
update  order1 set c_id=3 where oid in (3)
update  order1 set c_id=4 where oid in (4)
update  order1 set c_id=5 where oid in (5)

insert into order1 values(1,340,getdate())
insert into order1 values(2,4500,getdate())
insert into order1 values(3,2300,getdate())
insert into order1 values(4,670,getdate())
insert into order1 values(5,1400,getdate())


--alter table order1 add constraint pk_order1 primary key(oid)
alter table  order1 add  c_id int
--constraint fk_order1 foreign key(cid)references customer(cid)
alter table  order1 add constraint fk_order1 foreign key(c_id) references customres(c_id)

alter table  order1 add  salemanid int


update  order1 set salemanid=1 where oid in (1)
update  order1 set salemanid=2 where oid in (2)
update  order1 set salemanid=3 where oid in (3)
update  order1 set salemanid=4 where oid in (4)
update  order1 set salemanid=5 where oid in (5)


alter table  order1 add constraint fk_order1 foreign key(salemanid) references saleman(salemanid)



select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid


select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
where c.cname='rohit'



select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
where c.cname ='rohit' order by pamt



select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
where c.cname='rohit'


select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
where c.cname='arati' order by salmancommision 



select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
where c.cname='arati' order by salmancommision desc


select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
where s.salemanname='ook' order by pamt

select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
order by s.salemanname,s.salmancommision

select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
where o.oid=2 order by salmancommision 


select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
where c.cname='arati' order by pamt desc


select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
where c.c_id=5 order by salmancommision 


select o.oid,c.cname,s.salemanname,o.pamt
from  order1 o
inner join customers c on c.c_id=o.oid
inner join saleman s on s.salemanid=o.salemanid
where o.oid=4 order by cname
