--DQL
select* from Person

select * from person where age between 23 and 27

--in operator select the multiple possible values
select* from person where personId in(1,2,3)
select* from person where personId not in(1,2,3)
select* from person where country in('USA','india')
select* from person where country not in('USA','india')




--not /or/and

select*from Person where country='USA' and age>=23
select*from Person where country='USA' or country='india'
select*from Person where not country='USA'



--insert into person values(11,'Nama',23,'india')
--insert into person values(12,'Ram',24,'india')
--insert into person values(13,'Vipul',25,'india')
--insert into person values(14,'Rahul',26,'india')
--insert into person values(15,'Rohit',28,'india')


--like operator in sql

 select* from person where personName like 'a%'---start with a
select* from person where personName not like 'a%'
select* from person where personName like '%m'--end with m
select* from person where personName not like '%m'
select* from person where personName like '%a%' ---any where a are present//start with and end with any letter havaing a letter
select* from person where personName not like '%a%'
select* from person where personName like 'A__' --full match letter strat with j having next 2 mores letter
select* from person where personName not like 'A__' 
select* from person where personName like '[An]%' 
select* from person where personName not like '[An]%' 
select* from person where personName like '[a-m]%' 
select* from person where personName not like '[a-m]%' 


--null values in sql

insert into person values (11,'Chetan',24,null)
insert into person values (12,'Chitu',24,null)

select *from Person where country is null --is null
select *from Person where country is not null --is not null