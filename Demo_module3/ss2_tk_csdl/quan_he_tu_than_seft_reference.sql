create database if not exists quan_he_tu_than;
use quan_he_tu_than;
create table phong_ban(
id int primary key auto_increment,
ten varchar(50),
so_luong int,
id_phong_quan_ly int,
foreign key(id_phong_quan_ly) references phong_ban(id)
);
select pb1.id, pb1.ten as ten_phong_ban, ifnull(pb2.ten,"không có quản lý") as phong_quan_ly 
from phong_ban pb1 join phong_ban pb2 on pb1.id_phong_quan_ly =pb2.id;