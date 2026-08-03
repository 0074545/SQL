create database mobiles;
use mobiles;

create table mobile_table (
mobile_id tinyint primary key,
mobile_model varchar(100) not null,
mobile_type varchar(100) not null,
mobile_storage varchar(50) not null
);

select * from mobile_table;

alter table mobile_table
Add column city varchar(50);

select * from mobile_table;
use mobiles;

alter table mobile_table
modify mobile_id int not null;

alter table mobile_table
add constraint not_empty check (mobile_storage <100);

insert into mobile_table (mobile_id, mobile_model, mobile_type, mobile_storage)
values (001, "samsung", "touchscreen" , 256);

DROP TABLE mobile_table;

select * from mobile_table;

alter table mobile_table
rename to mobile_demo;

select * from mobile_demo;