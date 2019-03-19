create database messageboards;
use messageboards;

create table users(
name varchar(20) primary key,
password varchar(20),
role int,
created_at timestamp
);
create table messages(
id int primary key auto_increment,
name varchar(20),
title varchar(30),
message varchar(500),
created_at timestamp
);
insert into users(name,password,role) value('Admin','123456',0);
insert into messages(name,title,message) value('Admin','test','°®\nÄã');
insert into users(name,password,role) value(?,?,?)
insert into messages(name,title,message) value(?,?,?)