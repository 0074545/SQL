create database test1;

use test1;

create table table1(
user_id tinyint primary key,
full_name varchar(50) not null,
Age tinyint,
City varchar(23) not null
);

alter table table1
add constraint applying_for_age check ( age>18);

create table table2 (
product_id tinyint primary key,
product_name varchar(100) not null,
product_price int,
user_id tinyint references table1(user_id)
);

select * from table2;

insert into table2 (product_id, product_name)
values (001,"paper");

update table2
set product_price = 5000
where product_name = "paper"
and product_id = 001;

set sql_safe_updates = 0;

update table2
set product_price = 5000
where product_name = "paper"
or product_id = 1;

update table2
set product_price=
	case
		when product_name="paper" then product_price*2
		
        else product_id
    end;
    
alter table table2
add column salary int;

insert into table2 (user_id,salary)
values (21,25000);

truncate table table2;

insert into table2 (product_id,product_name,product_price,user_id)
values(1,"tV",50000,1,69000),
(2,"MOBILE",45666,2,67000)
;

delete from table2
where product_id = 1 ;

delete from table2
where product_name = 'MOBILE'
AND user_id = 2 ;
  
delete from table2
where product_name = 'MOBILE'
or user_id = 2 ;

delete from table2
where product_id in ('salary','product_name');

select * from table2;

delete from table2
where product_price < 100000 ;

alter table table2
drop column salary;

alter table table2
add column warranty varchar(50);

alter table table2
add column selling_price varchar(50);

insert into table2 (product_id,product_name,product_price,user_id,warranty,selling_price)
values(1,"tV",50000,1,69000,5000),
(2,"MOBILE",45666,2,67000,4000),
(3,"laptop",4325,3,62000,3000)
;

update table2
set product_price=
	case
		when product_name="laptop" then product_price*5
		
        else product_id
    end;

select * from table2 where product_id = 1;

select distinct
user_id,warranty from table2;

select selling_price
from table2
order by selling_price desc;

select selling_price
from table2
order by selling_price desc
limit 2
offset 2;

