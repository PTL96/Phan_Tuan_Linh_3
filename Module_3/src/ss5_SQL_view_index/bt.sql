create database demo;

use demo;

CREATE TABLE demo (
    id int not null,
    product_code varchar(45) null,
    product_name varchar(45) null,
    product_price varchar(45) null,
    product_amount varchar(45) null,
    product_description varchar(45) null,
    product_status varchar(45) null,
    primary key (id)
);