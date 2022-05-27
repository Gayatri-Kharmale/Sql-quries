--seft join

create table managers(
id int primary key,
mname varchar(20)
)

select * from managers
select * from Emp

alter table Emp add managerid  int
update Emp set managerid=1 where empid in(2,3,4,5)
update Emp set managerid=6 where empid in(7,8,9,10)
update Emp set managerid=10 where empid in(7)


select e1. firstname as empname ,e2.firstname as mangername
from Emp e1,Emp e2
where e1.managerid=e2.empid


------------------------------------study--------------------------------------------

create table study(
studid varchar(5),
cid varchar(5),
year int
)
insert into study values('s1','c1',2016)
insert into study values('s2','c1',2017)
insert into study values('s1','c1',2017)
update  study set cid='c2' where studid='s2' and year=2017

select * from study


select s1.studid,s1.cid,s1.year
from study s1,study s2
where s1.studid=s2.studid and s1.cid<>s2.cid 





--cw-------------------------

select * from Emp
alter table Emp drop column deptname 
alter table Emp add  did int

create table dept(
did int primary key,
dname varchar(10)
)
select * from dept

insert into dept values(1,'hr')
insert into dept values(2,'adamin')
insert into dept values(3,'marketing')
insert into dept values(4,'business')
insert into dept values(5,'dev')
insert into dept values(6,'testing')
insert into dept values(7,'hr')
insert into dept values(8,'Adamin')
insert into dept values(9,'dev')
insert into dept values(10,'hr')

update  Emp set did=1 where empid in (2,3,4,7)
update  Emp set did=2 where empid in (1,5,8)
update  Emp set did=3 where empid in (6,9,10)



alter table Emp add constraint fk_emp foreign key(did) references dept(did)


select e.firstname,e.empid, e.lastname,e.salary  ,  d.did,d.dname
from Emp e
inner join dept d on d.did=e.empid
where d.dname='hr'

select e.firstname,e.empid, e.lastname,e.salary  ,  d.did,d.dname
from Emp e
inner join dept d on d.did=e.empid
where d.dname='hr' order by salary

select e.firstname,e.empid, e.lastname,e.salary  ,  d.did,d.dname
from Emp e
inner join dept d on d.did=e.empid
where d.dname='hr' order by salary desc

select e.firstname,e.empid, e.lastname,e.salary  ,  d.did,d.dname
from Emp e
inner join dept d on d.did=e.empid
where d.dname='dev' order by firstname

select e.firstname,e.empid, e.lastname,e.salary  ,  d.did,d.dname
from Emp e
inner join dept d on d.did=e.empid
order by e.firstname,e.salary


--union
select city from customer where city='pune'
union
select city from suplier where city='pune'
union 
select city from person where city='pune'


----having clause
select country, count(personId)from person
group by country
having count(personId) >5



select country ,count(personId) as personcount from person
group by country
having country  in ('india','usa')
order by count (personId)
select * from Emp
select * from dept

alter table Emp add deptname varchar(20)
update  Emp set deptname='hr' where empid in (2,3,4,7)
update  Emp set deptname='sales' where empid in (1,5,8)
update  Emp set deptname='adamin' where empid in (6,9,10)



update Emp set salary=34899.45 where empid=2

select deptname ,count(empid) as empcount from Emp
group by deptname
having deptname  in ('hr','adamin')
order by count (empid)



----build in function in sql--------------------------------------------------------

select SUBSTRING(firstname,0,3)as tempname from Emp where empid=7 --substring

select CONCAT(firstname,' ',city)as info from Emp   --concat

select firstname,LEN (firstname)as lenght from Emp --len

select UPPER(firstname)as firstname from Emp --upper


select LOWER(firstname)as firstname from Emp --lower

select ROUND(salary,0)as salary from  Emp   where empid=1 --round 
select ROUND(345.89,0)as roundvalue

select CAST (salary as varchar(20)) from Emp --cast typecasting

--select CAST(GETDATA() as varchar(20)from Emp


select REVERSE(firstname) as reversrname from Emp--reverse

select	REPLACE(firstname,'Gayatri','Pooja')as info  from Emp where empid=1 --replace

select replace(salary,23000,34000)newsalary from Emp