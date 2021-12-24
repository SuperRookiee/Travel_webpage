use traveldb;
create table Product(
indexNo integer NOT NULL AUTO_INCREMENT primary key,
proName varchar(1000), #상품이름 (*)
price integer, #가격 (*)
continent varchar(1000), #대룩 (추천여행지)
nation varchar(1000), #국가 (추천여행지)
address varchar(1000), #상품주소 (상품자세히보기)
date varchar(1000), #운영시간 (상품자세히보기)
tel varchar(1000), #상품에대한전화번호 (상품자세히보기)
text varchar(1000), #요약글 (상품자세히보기,상품페키지)
detailtext varchar(2000), #장문 (상품자세히보기)
hashTag varchar(1000), #(3개 *)
mapurl varchar(3000), #지도(상품자세히보기)
img_root varchar(30),  #(3개 *)
options varchar(3000) 
);
select * from Product;
drop table Product;

create table hotel(
indexNo integer PRIMARY KEY auto_increment, 
imgurl varchar(30),
name varchar(30),
class varchar(30),
checkin varchar(30),
checkout varchar(30),
nation varchar(30),
address varchar(30),
price integer
);
select * from hotel;
drop table hotel;

create table air(
indexNo integer PRIMARY KEY auto_increment, 
imgurl varchar(30),
toair varchar(30),
formair varchar(30),
boardingTime varchar(30),
DEPARTURETIME varchar(30),
class varchar(30),
price integer
);
select * from air;
drop table air;


create table userInfo(
	name varchar(50),
    userId varchar(50),
    userPwd varchar(50),
    email varchar(50),
    phoneNo varchar(50),
    address varchar(300)
);
select * from userInfo;
drop table userInfo;

create table orders(
userId varchar(500),
proName varchar(500),
date_o varchar(500),
option_o varchar(500),
price integer,
content varchar(50)
);
select * from orders;
drop table orders;

delete from product where indexNo=1;

insert into userInfo value ('1111','1111','1111','1111','1111','1111');
DELETE FROM userInfo WHERE userId = '1111';

select count(*) from Product ;


select userId, userPwd from userInfo where userId = "1111" and userPwd = "1111";
select * from Product where continent = 'NorthA' and (nation like '%서울%' or proName like '%서울%' or text like '%서울%' or detailtext like '%서울%') ;


SELECT * FROM orders WHERE userId =