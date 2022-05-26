--DML
select * from person
insert into Person values(1,'Gayatri',21,'india')
insert into Person values(2,'Pooja',22,'india')
insert into Person values(3,'Anu',27,'india')
insert into Person values(4,'Akshu',29,'india')
insert into Person values(5,'Sakshi',24,'india')
insert into Person values(6,'Vishakha',26,'india')
insert into Person values(7,'Vaishu',23,'india')
insert into Person values(8,'Vaishali',20,'india')
insert into Person values(9,'Shradha',31,'india')
insert into Person values(10,'poonam',32,'india')
--insert into person(personId,name,age)values(3,'tushar',23)


update person set age=25 where personId=10

update person set country='USA' where personId=10
update person set country='USA' where personId=3
update person set country='UK' where personId=5
select personName ,age from person 

select * from person where personId<=3
select * from person where personId>=3
select * from person where personId<3
select * from person where personId>3
select * from person where personId<>3


select distinct country from person
select distinct personName from person
