<?php

	include_once('functions.php');

	$ct1='create table Countries(id int not null auto_increment primary key, country varchar(64) unique, avatar mediumblob
		)default charset="utf8"';


	$ct2='create table Roles(id int not null auto_increment primary key,role varchar(32) unique
		)default charset="utf8"';

	
	$ct3='create table Cities(id int not null auto_increment primary key, city varchar(64), countryid int,
		foreign key (countryid) references Countries(id) on delete cascade, uindex varchar(128), unique index uindex(city,countryid)
		)default charset="utf8"';
	
	$ct4='create table Hotels(id int not null auto_increment primary key,hotel varchar(64),cityid int,
        foreign key(cityid) references Cities(id) on delete cascade, countryid int, foreign key(countryid) references Countries(id) on delete cascade,
        stars int, cost int, info varchar(1024))
		default charset="utf8"';
	
	$ct5='create table Images(id int not null auto_increment primary key, imagepath varchar(255), hotelid int,
        foreign key(hotelid) references Hotels(id) on delete cascade)
		default charset="utf8"';
	
	$ct6='create table Users(id int not null auto_increment primary key, login varchar(32) unique, pass varchar(128), email varchar(128), avatar mediumblob, roleid int, 
        foreign key(roleid) references Roles(id) on delete cascade)
		default charset="utf8"';

    $ct7='create table Comments(id int not null auto_increment primary key, userid int, foreign key(userid) references Users(id), hotelid int,
        foreign key(hotelid) references Hotels(id), login varchar(32), foreign key(login) references Users(login),
        text varchar(1024) not null, datein datetime) default charset=utf8';

	connect();
	mysql_query($ct7);
	$err=mysql_errno();
	if($err) 
		{
			echo 'Alarm!'.$err.'<br />';
		}


?>