SHOW DATABASES;

CREATE TABLE admins (
 adminID      INT(11)      NOT NULL   AUTO_INCREMENT,
 emailAddress VARCHAR(255) NOT NULL   UNIQUE,
 password     CHAR(64)     NOT NULL,
 firstName    VARCHAR(60)  NOT NULL,
 lastName     VARCHAR(60)  NOT NULL,
  PRIMARY KEY (adminID)
);

SHOW TABLES;

SHOW CREATE TABLE admins;


DESCRIBE admins;


INSERT INTO admins
(emailAddress, password, firstName, lastName)
VALUES
('taylor@guitarshop.com',
SHA2('myL0ngP@ssword', 256), 'Taylor', 'Swift');

SELECT emailAddress, firstName FROM admins ORDER BY firstName;

SELECT * FROM admins WHERE lastName = 'Swift';

INSERT INTO admins (emailAddress, password, firstName, lastName) VALUES ('darsha@guitarshop.com', SHA2('darsha@kk1234', 256), 'Darsha', 'KK');


UPDATE admins SET emailAddress = 'taylor.swift@guitarshop.com' WHERE adminID = 1;


DELETE FROM admins WHERE adminID = 2;

SELECT * FROM admins;
