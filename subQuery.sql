--subquery in sql/inner query
--select max(salary) as maxsalary from Emp
--1st highest salary
select firstname ,salary from Emp where salary=
(select max(salary) from Emp)

--2nd highest salary
  select firstname ,salary from Emp where salary=(
  select max(salary) from Emp where salary <>(select max(salary) from Emp)
  )

   --select * from secondhighestsalary
  --3red highest salary
  --create view secondhighestsalary as
    select firstname ,salary from Emp where salary=(
   select max (salary)from Emp where salary<(
  select max (salary)from Emp where salary<>(select max(salary) from Emp) 
  )
  )

  --4 th highest salary
  --create view highestsalary as --for view
  --select * from highestsalary
  select firstname ,salary from Emp where salary=(
   select max (salary)from Emp where salary<(
   select max (salary)from Emp where salary<(
  select max (salary)from Emp where salary<>(select max(salary) from Emp) 
  )
  )
  )




  select  * from Emp where empid in
  (
  select empid from Emp where salary>30000
  )
  -------------------------------------------------
  --display person name who has purchasrd the product whoes price is >300
  select * from Orders

    select * from Person

select p.personName,p.country,o.orderNo,o.productname,o.price,o.orderId
from person p
inner join Orders o on o.personId=p.personId;
----------------------------------------------------------------------------

 ----------------------------------------------------------------

 --display name of emp who take highr salary than the emp id 5
 select firstname ,salary from Emp where salary>
(select salary from Emp where empId=5)

----------------------------------------------------------
--display emp deatils whose city is same as emp id 4
select city from Emp where  empid =4
-----------------------------------------------------------------
--display emp deytails whpse salary is greater than avg salary of all emps
select firstname ,salary from Emp where salary>
(select avg(salary) from Emp)

---------------------------------------------------------------------------
--find emp whoes salary is more than avg salary of any dept 
select firstname,salary,did
from Emp where salary> all(select avg(salary) from Emp group by did)
 
 ---------------------------------------------------------------------

 --display sum of salary dept wise
 select did, sum(salary)as sumsalary from Emp group by did


select * from Emp
-----------------------------------------------------------------------
--display emp who get more than salary of sales dept
select firstname from Emp where salary>all(select avg(salary) from Emp
where did=(select did from dept where deptname='hr'))
select * from dept
--or
select * from Emp where did in(select did from dept where deptname like'hr')
and
salary>(select avg(salary)from Emp)


--------------------------------subquey with update statement-----------------------------------------

select * from Emp

--update salary by 30% of wmp who work in dev dept
update Emp set salary=salary*0.30 where did =(select did from dept where deptname='dev')

--subquery with delete statement
delete from Emp where did=(select did from dept where deptname='hr')

--subquery with insert statement
insert into orders select personid from person where personId=
(select personId from person where personId in(2,3))
---------------------------------------------------------------------------------