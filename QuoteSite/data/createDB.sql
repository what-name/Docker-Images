CREATE DATABASE quotes;
CREATE USER 'quoteUser'@'localhost' IDENTIFIED BY 'NotThatGREATOFaPassword';
GRANT ALL ON quotes.* TO 'quoteUser'@'localhost';

UPDATE mysql.user SET plugin=null WHERE user='root';
SET password for 'root'@'localhost' = PASSWORD('NotThatGREATOFaPassword');

FLUSH PRIVILEGES;