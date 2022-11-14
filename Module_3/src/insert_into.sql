SELECT * FROM furama.facility_type;
INSERT INTO `furama`.`facility_type` (`name`) VALUES ('Villa');
INSERT INTO `furama`.`facility_type` (`name`) VALUES ('House');
INSERT INTO `furama`.`facility_type` (`name`) VALUES ('Room');

SELECT * FROM furama.rent_type;
INSERT INTO `furama`.`rent_type` (`name`) VALUES ('year');
INSERT INTO `furama`.`rent_type` (`name`) VALUES ('month');
INSERT INTO `furama`.`rent_type` (`name`) VALUES ('day');
INSERT INTO `furama`.`rent_type` (`name`) VALUES ('hour');

SELECT * FROM furama.facility;
INSERT INTO `furama`.`facility` (`name`, `area`, `cost`, `max_people`, `rent_type_id`, `facility_type_id`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`) VALUES ('Villa Beach Front', '25000', '1000000' , '10', '3', '1', 'vip', 'Có hồ bơi', '500', '4', '0');
INSERT INTO `furama`.`facility` (`name`, `area`, `cost`, `max_people`, `rent_type_id`, `facility_type_id`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`) VALUES ('House Princess 01', '14000', '5000000', '7', '2', '2', 'vip', 'Có thêm bếp nướng', '500', '3', '0');
INSERT INTO `furama`.`facility` (`name`, `area`, `cost`, `max_people`, `rent_type_id`, `facility_type_id`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`) VALUES ('Room Twin 01', '5000', '1000000', '2', '4', '3',  'normal', 'Có tivi', '0', '200', '1 Xe máy, 1 Xe đạp');
INSERT INTO `furama`.`facility` (`name`, `area`, `cost`, `max_people`, `rent_type_id`, `facility_type_id`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`) VALUES ('Villa No Beach Front', '22000', '9000000', '8', '3', '1', 'normal', 'Có hồ bơi', '300', '3', '0');
INSERT INTO `furama`.`facility` (`name`, `area`, `cost`, `max_people`, `rent_type_id`, `facility_type_id`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`) VALUES ('House Princess 02', '10000', '4000000', '5', '3', '2', 'normal', 'Có thêm bếp nướng', '500', '2', '0');
INSERT INTO `furama`.`facility` (`name`, `area`, `cost`, `max_people`, `rent_type_id`, `facility_type_id`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`) VALUES ('Room Twin 02', '3000', '900000', '2', '4', '3', 'normal', 'Có tivi', '0', '300', '1 Xe máy');

SELECT * FROM furama.customer_type;
INSERT INTO `furama`.`customer_type` (`name`) VALUES ('Diamond');
INSERT INTO `furama`.`customer_type` (`name`) VALUES ('Platinium');
INSERT INTO `furama`.`customer_type` (`name`) VALUES ('Gold');
INSERT INTO `furama`.`customer_type` (`name`) VALUES ('Silver');
INSERT INTO `furama`.`customer_type` (`name`) VALUES ('Member');

SELECT * FROM furama.customer;
INSERT INTO `furama`.`customer` (`customer_type_id`, `name`, `day_of_birth`, `gender`, `id_card`, `phone_number`, `email`, `address`) VALUES ('5','Nguyễn Thị Hào', '1970-11-07', b'0', '643431213', '0945423362', 'thihao07@gmail.com', '23 Nguyễn Hoàng, Đà Nẵng');
INSERT INTO `furama`.`customer` (`customer_type_id`, `name`, `day_of_birth`, `gender`, `id_card`, `phone_number`, `email`, `address`) VALUES ('3', 'Phạm Xuân Diệu', '1992-08-08', b'1', '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị');
INSERT INTO `furama`.`customer` (`customer_type_id`, `name`, `day_of_birth`, `gender`, `id_card`, `phone_number`, `email`, `address`) VALUES ('1', 'Trương Đình Nghệ', '1990-02-27', b'1', '488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 Ông Ích Khiêm, Vinh');
INSERT INTO `furama`.`customer` (`customer_type_id`, `name`, `day_of_birth`, `gender`, `id_card`, `phone_number`, `email`, `address`) VALUES ('1', 'Dương Văn Quan', '1981-07-08', b'0', '543432111', '0490039241', 'duongquan@gmail.com', 'K453/12 Lê Lợi, Đà Nẵng');
INSERT INTO `furama`.`customer` (`customer_type_id`, `name`, `day_of_birth`, `gender`, `id_card`, `phone_number`, `email`, `address`) VALUES ('4', 'Hoàng Trần Nhi Nhi', '1995-12-09', b'0', '795453345', '0312345678', 'nhinhi123@gmail.com', '224 Lý Thái Tổ, Gia Lai');
INSERT INTO `furama`.`customer` (`customer_type_id`, `name`, `day_of_birth`, `gender`, `id_card`, `phone_number`, `email`, `address`) VALUES ('1', 'Tôn Nữ Mộc Châu', '2005-12-06', b'0', '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng');
INSERT INTO `furama`.`customer` (`customer_type_id`, `name`, `day_of_birth`, `gender`, `id_card`, `phone_number`, `email`, `address`) VALUES ('3', 'Nguyễn Mỹ Kim', '1984-04-08', b'0', '856453123', '0912345698', 'kimcuong84@gmail.com', 'K123/45 Lê Lợi, Hồ Chí Minh');
INSERT INTO `furama`.`customer` (`customer_type_id`, `name`, `day_of_birth`, `gender`, `id_card`, `phone_number`, `email`, `address`) VALUES ('1', 'Nguyễn Thị Hào', '1999-04-08', b'0', '965656433', '0763212345', 'haohao99@gmail.com', '55 Nguyễn Văn Linh, Kon Tum');
INSERT INTO `furama`.`customer` (`customer_type_id`, `name`, `day_of_birth`, `gender`, `id_card`, `phone_number`, `email`, `address`) VALUES ('4', 'Trần Đại Danh', '1994-07-01', b'1', '432341235', '0643343433', 'danhhai99@gmail.com', '24 Lý Thường Kiệt, Quảng Ngãi');

SELECT * FROM furama.user;
INSERT INTO `furama`.`user` (`username`, `password`) VALUES ('cuauda', '94uo936');
INSERT INTO `furama`.`user` (`username`, `password`) VALUES ('uoaead', 'kfiu203');
INSERT INTO `furama`.`user` (`username`, `password`) VALUES ('atrdv', 'vncb34');
INSERT INTO `furama`.`user` (`username`, `password`) VALUES ('qvdbc', 'lfaad872');
INSERT INTO `furama`.`user` (`username`, `password`) VALUES ('plfkr', 'nfja214');

SELECT * FROM furama.role;
INSERT INTO `furama`.`role` (`role_id`, `username`) VALUES ('1', 'cuauda');
INSERT INTO `furama`.`role` (`role_id`, `username`) VALUES ('2', 'uoaead');
INSERT INTO `furama`.`role` (`role_id`, `username`) VALUES ('3', 'atrdv');
INSERT INTO `furama`.`role` (`role_id`, `username`) VALUES ('4', 'qvdbc');
INSERT INTO `furama`.`role` (`role_id`, `username`) VALUES ('5', 'plfkr');

SELECT * FROM furama.employee;
INSERT INTO `furama`.`employee` (`name`, `day_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`) VALUES ('Nguyễn Văn An', '1970-11-07', '456231786', '10000000', '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', '1', '3', '1');
INSERT INTO `furama`.`employee` (`name`, `day_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`) VALUES ('Lê Văn Bình', '1997-04-09', '654231234', '7000000', '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', '1', '2', '2');
INSERT INTO `furama`.`employee` (`name`, `day_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`) VALUES ('Hồ Thị Yến', '1995-12-12', '999231723', '14000000', '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', '1', '3', '2');
INSERT INTO `furama`.`employee` (`name`, `day_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`) VALUES ('Võ Công Toản', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', '1', '4', '4');
INSERT INTO `furama`.`employee` (`name`, `day_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`) VALUES ('Nguyễn Bỉnh Phát', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', '2', '1', '1');
INSERT INTO `furama`.`employee` (`name`, `day_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`) VALUES ('Khúc Nguyễn An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'annghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', '2', '2', '3');
INSERT INTO `furama`.`employee` (`name`, `day_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`) VALUES ('Nguyễn Hữu Hà', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', '2', '3', '2');
INSERT INTO `furama`.`employee` (`name`, `day_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`) VALUES ('Nguyễn Hà Đông', '1989-09-03', '234414123', '9000000', '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', '2', '4', '4');
INSERT INTO `furama`.`employee` (`name`, `day_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`) VALUES ('Tòng Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng', '2', '4', '4');
INSERT INTO `furama`.`employee` (`name`, `day_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `division_id`) VALUES ('Nguyễn Công Đạo', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyencongdao12@gmail.com', '6 Hoà Khánh, Đồng Nai', '2', '3', '2');


SELECT * FROM furama.division;
INSERT INTO `furama`.`division` (`name`) VALUES ('Sale-Marketing');
INSERT INTO `furama`.`division` (`name`) VALUES ('Hành chính');
INSERT INTO `furama`.`division` (`name`) VALUES ('Phục vụ');
INSERT INTO `furama`.`division` (`name`) VALUES ('Quản lý');

SELECT * FROM furama.education_degree;
INSERT INTO `furama`.`education_degree` (`name`) VALUES ('Trung Cấp');
INSERT INTO `furama`.`education_degree` (`name`) VALUES ('Cao Đẳng');
INSERT INTO `furama`.`education_degree` (`name`) VALUES ('Đại Học');
INSERT INTO `furama`.`education_degree` (`name`) VALUES ('Sau Đại Học');

SELECT * FROM furama.position;
INSERT INTO `furama`.`position` (`name`) VALUES ('Quản Lý');
INSERT INTO `furama`.`position` (`name`) VALUES ('Nhân Viên');



