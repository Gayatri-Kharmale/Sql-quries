
--order by caluse

select * from Person
order by age--ascending order

select * from Person
order by age desc --decending order


--aggregate function

select count (distinct deptname)from Emp
select count(*)from Emp

select sum(salary)as SumSalary from Emp

select avg(salary)as AvgSalary from Emp

select max(salary)as maxSalary from Emp

select min(salary)as minSalary from Emp


--group by clause

select * from Person

select country , count(personId) as personcount from Person
group by country
----

select * from Emp
select deptname,count(empid)as empcount from Emp
group by deptname

---
select city,count(empid)as empcount from Emp
group by city