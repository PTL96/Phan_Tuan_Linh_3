drop database if exists school;
create database school;
use school;
-- tạo bảng
create table class(
id int primary key auto_increment,
`name` varchar(50));
create table teacher(
id int primary key auto_increment,
`name` varchar(50),
age int,
country varchar(50)
);
-- thêm mới dữ liệu
insert into class ( name) value ("Phan Tuấn Linh"),("Nguyễn Ngọc Tấn"),("Lê Tạ Hà Phương"),("Lê Bảo Khánh"),("Đặng Phương Bảo");
insert into teacher ( name, age, country) value ("Quang NN", 29, "Quảng Trị"), ("Chánh TV",35, "Đà Nẵng"),("Công NT", 30, "Đà Nẵng"),("Hải TT", 24, "Quảng Nam");