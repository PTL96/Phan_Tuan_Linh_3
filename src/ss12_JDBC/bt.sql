drop database if exists demo_users;
create database demo_users;
use demo_users;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT  PRIMARY KEY,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120)
);
insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');