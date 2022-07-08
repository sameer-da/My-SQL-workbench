
-- Q1
use assignment;
delimiter ;;
create procedure order_status (year_ varchar(4),month_ int)
begin
select ordernumber,orderdate,status from orders where year(orderdate)=year_ and month(orderdate)=month_;

end;;
delimiter ;

call order_status (2004,01);


-- Q3
alter table payments add column purchase_status varchar(10);
update payments set purchase_status = 'silver' where amount < 25000;
update payments set purchase_status = 'gold' where amount < 50000;
update payments set purchase_status = 'platinum' where amount > 50000;

delimiter ;;
create procedure pur_status (custno int)
begin
select purchase_status from payments where customernumber= custno;
end ;;
delimiter ;
call pur_status(103);

select c.customername,c.customernumber,p.purchase_status
from customers c
join payments p on c.customernumber =p.customernumber;




-- Q4

delimiter ;;
create trigger mov_del after delete on movies for each row
begin

delete from rentals where movieid= deleted.id;

end ;;
delimiter ;

delimiter ;;
create trigger mov_up after update on movies for each row
begin

update rentals set movieid=new.id where movieid= new.id;

end ;;
delimiter ;





-- Q5
select fname from employee order by salary desc limit 2,1;


-- Q6
select *,dense_rank() over(order by salary desc) Ranks  from employee order by ranks asc;