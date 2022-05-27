
--joins


select * from person
select * from Orders

alter table orders add productname varchar(20) --add colunm
alter table orders add price int --add column

insert into orders values(1,1001,1,'keyboard',999)
insert into orders values(2,1002,1,'mouse',349)
insert into orders values(3,1003,5,'laptop',679)
insert into orders values(4,1004,5,'mobile',899)
insert into orders values(5,1005,5,'mouse',679)




--inner join


select p.personName,p.country,o.orderNo,o.productname,o.price,o.orderId
from person p
inner join Orders o on o.personId=p.personId;


--where p.personId=1--userwise data show


--left join

select p.personName,p.country,o.orderNo,o.productname,o.price,o.orderId
from person p
left join Orders o on o.personId=p.personId;

--where p.personId=1


--right join
select p.personName,p.country,o.orderNo,o.productname,o.price,o.orderId
from person p
right join Orders o on o.personId=p.personId;
--where p.personId=1


--full join

select p.personName,p.country,o.orderNo,o.productname,o.price,o.orderId
from person p
full join Orders o on o.personId=p.personId;
--where p.personId=1

--seft  join