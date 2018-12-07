create database 0412012660_lokaverk01;

CREATE TABLE 0412012660_lokaverk01.users(
	user varchar(32) not null,
    pass varchar(32) not null,
    nafn varchar(32) not null,
    PRIMARY KEY (user)
);
insert into 0412012660_lokaverk01.users(user,pass,nafn) value ('2608012360','123456','Sunna');
insert into 0412012660_lokaverk01.users (user, passw, nafn) values('TTJ','123456','Tumi');

CREATE TABLE 0412012660_lokaverk01.frett(
	ID int(11) not null auto_increment,
    story varchar(32) not null,
    author varchar(32) not null,
    PRIMARY KEY (ID)
);
