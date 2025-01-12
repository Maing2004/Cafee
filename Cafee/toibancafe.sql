CREATE SCHEMA `toibancafe` ;

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `toibancafe`.`category` (`categoryname`) VALUES ('Cà phê');
INSERT INTO `toibancafe`.`category` (`categoryname`) VALUES ('Trà trái cây');
INSERT INTO `toibancafe`.`category` (`categoryname`) VALUES ('Trà sữa');
INSERT INTO `toibancafe`.`category` (`categoryname`) VALUES ('Thức uống đá xay');
INSERT INTO `toibancafe`.`category` (`categoryname`) VALUES ('Bánh & Snack');
INSERT INTO `toibancafe`.`category` (`categoryname`) VALUES ('Matcha - Chocolate');
INSERT INTO `toibancafe`.`category` (`categoryname`) VALUES ('Combo Trà & Bánh');

CREATE TABLE `product` (
  `foodId` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `discount` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `foodCategory` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`foodId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


