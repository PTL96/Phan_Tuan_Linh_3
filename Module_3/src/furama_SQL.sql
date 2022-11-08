drop database if exists furama;
create database furama;
use furama;

create table position (
id int auto_increment primary key,
`name` varchar(45)
);

create table education_degree (
id int auto_increment primary key,
`name` varchar(45)
);

create table division (
id int auto_increment primary key,
`name` varchar(45)
);

create table employee (
id int auto_increment primary key,
`name` varchar(45),
day_of_birth date,
salary double,
phone_number varchar(45),
email varchar(45),
address varchar(45),
position_id int,
education_degree_id int,
division_id int,
username varchar(255),
foreign key (position_id) references position (id),
foreign key (education_degree_id) references education_degree (id),
foreign key (division_id) references division (id)
);

create table customer_type (
id int auto_increment primary key,
`name` varchar(45)
);

create table customer (
id int auto_increment primary key,
customer_type_id int,
`name` varchar(45),
day_of_birth date,
gender bit(1),
id_card varchar(45),
phone_number varchar(45),
email varchar(45),
address varchar(45),
foreign key (customer_type_id) references customer_type (id)
);

create table facility_type (
id int auto_increment primary key,
`name` varchar(45)
);

create table rent_type (
id int auto_increment primary key,
`name` varchar(45)
);

create table facility (
id int auto_increment primary key,
`name` varchar(45),
area int,
cost double,
max_people int,
rent_type_id int,
facility_type_id int,
standard_room varchar(45),
description_other_convenience varchar(45),
pool_area double,
number_of_floors int,
facility_free text,
foreign key (rent_type_id) references rent_type (id),
foreign key (facility_type_id) references facility_type (id)
);

create table contract (
id int auto_increment primary key,
start_date datetime,
end_date datetime,
deposit double,
employee_id int,
customer_id int,
facility_id int,
foreign key (employee_id) references employee (id),
foreign key (customer_id) references customer (id),
foreign key (facility_id) references facility (id)
);

create table attach_facility (
id int auto_increment primary key,
`name` varchar(45),
cost double,
unit varchar(10),
`status` varchar(45)
);

create table contract_detail (
id int auto_increment primary key,
contract_id int,
attach_facility_id int,
quantity int,
foreign key (contract_id) references contract (id),
foreign key (attach_facility_id) references attach_facility (id)
);