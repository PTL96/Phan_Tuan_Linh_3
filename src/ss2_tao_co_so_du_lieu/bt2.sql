drop database if exists QuanLyBanHang;
create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int primary key,
cName varchar(45),
cAge int
);
create table Product(
pID int primary key,
pName varchar(50),
pPrice double
);
create table Oder(
oID int primary key,
cID int,
oDate date,
oTotalPrice double,
foreign key (cID) references Customer(cID) 
);
create table OderDetail(
odQTY int,
oID int,
pID int,
primary key(oID,pID),
foreign key (oID) references Oder(oID),
foreign key (pID) references Product(pID)
);