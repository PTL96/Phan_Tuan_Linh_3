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


