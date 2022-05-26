create table Person(
personId int,
personName varchar(20) , 
age int,
--country varchar(20) default 'india'

--constaint chk_age check(age>=18)

)




alter table person alter column personId int not null
alter table person add constraint pk_person primary key(personId)--add primary key
alter table person add age int not null  --add age coloumn
alter table person add constraint chk_age check(age>=18) --check condition 
--alter table person drop contraint chk_age     delete coloumn

create unique index index_person on person (personId);  --index constrsints

alter table person add country varchar(20) default 'india'  --defalut constarints


--alter table person add personId int identity(1,1)--identity



alter table person alter column personName varchar(40) not null
alter table Person add city varchar(50)
alter table Person drop column city
alter table Person alter column personName varchar(40)
--sp_rename 'person.personname','name'
select * from Person
sp_help Person








create table Orders(
orderId int,
orderNo int,
personId int,
constraint pk_order primary key(orderId),
constraint pk_order_person foreign key (personId)references Person(personId)
--alter table orders drop constraint pk_order_person--frop foreign key
)
sp_help Orders










sp_help Cource
create table Cource(
Id int,
cname varchar(20),
constraint  pk_cource primary key(Id)


)
alter table cource drop constraint pk_cource --drop primary key
alter table cource add constraint pk_cource primary key(Id) --add primary key
alter table Cource alter column cname varchar(40) not null
alter table Cource add city varchar(50)
alter table Cource drop column city
alter table Cource alter column cname varchar(40)
--sp_rename 'person.personname','name'
select * from Cource