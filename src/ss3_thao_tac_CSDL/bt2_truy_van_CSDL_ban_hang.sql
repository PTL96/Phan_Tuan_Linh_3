use QuanLyBanHang;
insert into Customer values (1,'Minh Quan',10),
							(2,'Ngoc Oanh',20),
							(3,'Hong Ha',50);
insert into Oder values (1,1,'2006-3-21',null),
								 (2,2,'2006-3-23',null),
								 (3,1,'2006-3-16',null);
insert into Product values  (1,'May Giat',3),                                    
							(2,'Tu Lanh',5),
							(3,'Dieu Hoa',7),
							(4,'Quat',1),
							(5,'Bep Dien',2);
insert into OderDetail(oId,pId,odQTY) values  (1,1,3),                               
								 (1,3,7),
								 (1,4,2),
								 (2,1,1),
								 (3,1,8),
								 (2,5,4),
								 (2,3,3);
                                 
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order 
select  oID, 
		oDate, 
oTotalPrice
from Oder;                                 
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select  Customer.cName, 
		Product.pName
from Product
join Customer
on Customer.cID = Oder.cID
join  Oder 
on Oder.oID = OderDetail.oID 
join OderDetail
on OderDetail.pID =  Product.pID;