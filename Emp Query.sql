create table Emp(
empid int primary key,
firstname varchar(20),
lastname varchar(20),
salary int,
city varchar(20),
deptname varchar(20)
)
select * from Emp

insert into Emp values(1,'Gayatri','Kharmale',23000,'Pune','Hr')
insert into Emp values(2,'Pratik','Khaire',33000,'Pune','Adamin')
insert into Emp values(3,'Rahul','Ghadage',40000,'Pune','Sales')
insert into Emp values(4,'Askhu','Sahane',10000,'Bhosari','business')
insert into Emp values(5,'Vaishu','chaudhari',70000,'Dhule','Marketing')
insert into Emp values(6,'Gavu','Gaikwad',68000,'Pune','Hr')
insert into Emp values(7,'Natasha','Navale',90000,'Nagar','Adamin')
insert into Emp values(8,'Yok','Kasar',56000,'Manchar','Sales')
insert into Emp values(9,'Ram','Mand',47000,'nashik','Marketing')
insert into Emp values(10,'Sham','Pan',50000,'mumbai','Hr')


select * from Emp where deptname='Sales'

select * from Emp where Salary>35000

select* from Emp where city in('Pune','Mumbai')

select * from Emp where salary between 25000 and 30000

select* from Emp where firstname like '%A'


select distinct deptname from Emp

select* from Emp where deptname not in('Hr','sales')