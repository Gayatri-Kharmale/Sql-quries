--stored procedure

create procedure SP_Insert_dept(@did int,@dname varchar(20))
as begin
insert into dept values (@did,@dname)
return
end

--to alter existing sp
--alter procedure SP_Insert_dept(@did int,@dname varchar(20))
--as begin
--insert into dept values (@did,@dname)
--return
--end

create procedure SP_Update_dept(@did int,@dname varchar(20))
as begin
update dept set  dname=@dname where did=@did
return
end

select * from dept

create procedure SP_SelectAll_dept
as begin
select * from dept
return
end


exec  SP_SelectAll_dept

exec SP_Insert_dept
@did=1,
@dname='hr'