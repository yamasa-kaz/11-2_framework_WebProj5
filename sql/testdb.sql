DROP database IF EXISTS testdb;
CREATE database testdb;
use testdb;

CREATE TABLE users(
user_id int PRIMARY KEY auto_increment,
user_name varchar(255),
password varchar(255)
);

INSERT INTO users values(1,"taro","123");
INSERT INTO users values(2,"jiro","456");
INSERT INTO users values(3,"hanako","789");

CREATE TABLE inquiry(
name varchar(255),
qtype varchar(255),
body varchar(255)
);