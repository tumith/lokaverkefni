create database 0412012660_lokaverk01;


create table 0412012660_lokaverk01.users(
	user varchar(32) not null,
    passw varchar(32) not null,
    nafn varchar(32) not null,
    primary key(user)
);

insert into 0412012660_lokaverk01.users (user, passw, nafn) values('TTJ','123456','Tumi');

create table 0412012660_lokaverk01.leikir(
	leikur varchar(32) not null,
    verd int(32) not null
);

insert into 0412012660_lokaverk01.leikir (leikur, verd) value ('GTA V',20000);

drop database 0412012660_lokaverk01;