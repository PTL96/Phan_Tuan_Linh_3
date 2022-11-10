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


