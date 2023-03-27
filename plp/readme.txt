Test procedure:
Install XAMPP to root drive in folder 'xampp'
    navigate to C:\xampp\htdocs\
    you can store web projects here. put 'plp' folder containing web files here

run xampp:
Start Apache
Start MySQL

db url:
localhost/phpmyadmin/
manually import the db form /db/plptest.sql to phpmyadmin

if not attached
ex schema, but make mentee_id a pk
CREATE TABLE `mentees` (
  `mentee_id` int(11) NOT NULL COMMENT 'pk auto inc',
  `fname` varchar(50) NOT NULL COMMENT 'first name',
  `prefname` varchar(50) NOT NULL COMMENT 'preferred name',
  `lname` varchar(50) NOT NULL COMMENT 'last name',
  `student_id` varchar(10) NOT NULL COMMENT 'unt student id',
  `email` varchar(254) NOT NULL COMMENT 'unt email',
  `date_of_birth` date NOT NULL,
  `class` varchar(9) NOT NULL COMMENT 'class year',
  `gpa` float NOT NULL,
  `phone` varchar(20) NOT NULL COMMENT 'preferred phone',
  `address` varchar(254) NOT NULL COMMENT 'street address',
  `city` varchar(85) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zipcode` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Basic mentee info';


homepage url:
localhost/plp/