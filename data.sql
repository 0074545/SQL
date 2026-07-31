create database mobiles;
use mobiles;

create table mobile_table (
mobile_id tinyint primary key,
mobile_model varchar(100) not null,
mobile_type varchar(100) not null,
mobile_storage varchar(50) not null
);

select * from mobile_table;
