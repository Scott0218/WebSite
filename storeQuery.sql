create database GamingStore
use GamingStore

--創建管理者資料表-ShopMasters

create table ShopMasters (
mid varchar(10) not null,
pwd varchar(10) not null,
name nvarchar(10) not null,
email varchar(30) not null,
sex char(4) not null,
isTerminate bit not null,
rating bit not null,
modifyname nvarchar(10),
modifyDate datetime,
primary key (mid)
)


--添加管理者資料
INSERT INTO ShopMasters VALUES('scott0218','scott0218','劉威辰','scott0218@shopsong.com.tw','M',0,1,null,null),('andy0325','andy0325','劉德華','andy0325@shopsong.com.tw','M',0,0,null,null),('fish0622','fish0622','梁靜茹','fish0622@shopsong.com.tw','F',0,0,null,null)

INSERT INTO ShopMasters VALUES('scott0218','scott0218','劉威辰','scott0218@shopsong.com.tw','M',0,1,null,null)
INSERT INTO ShopMasters VALUES('andy0325','andy0325','劉德華','andy0325@shopsong.com.tw','M',0,0,null,null)
INSERT INTO ShopMasters VALUES('fish0622','fish0622','梁靜茹','fish0622@shopsong.com.tw','F',0,0,null,null)

SELECT * FROM ShopMasters

--創建會員資料表
CREATE TABLE Members(
mid VARCHAR(10) NOT NULL,
pwd VARCHAR(50) NOT NULL,
name NVARCHAR(10) NOT NULL,
age INT,
addr NVARCHAR(30),
tel VARCHAR(12),
email VARCHAR(30),
rating BIT NOT NULL,
primary key(mid)
)

--添加會員數據
INSERT INTO Members VALUES('m0001','bf3726ba2640ac2e99e1f41c7ad061','會員1',18,'測試會員地址1',null,null,0),('m0002','5af0889ff3ce8b3c907398ffa733375','會員2',22,null,null,null,0),('m0003','526449c97e9389d677fb154e50b5d0ef','會員3',25,'測試會員地址3','0922-122-122','m0003@shopsong.com.tw',1),('m0004','c8b434b7615a072673945f9315f8756','會員4',16,'測試會員地址4','0924-124-244','m0004@shopsong.com.tw',0),('m0005','a8803b97dca656616fc43c23449ef16b','會員5',19,null,null,null,0),('m0006','a9691ab35abb9d6f6dc46dfc2f4ea96d','會員6',24,'測試會員地址6','0966-166-166','m0006@shopsong.com.tw',0)

SELECT * FROM Members

--創建商品資料表
CREATE TABLE Products(
pid VARCHAR(20) NOT NULL,
name NVARCHAR(20) NOT NULL,
content NVARCHAR(50) NOT NULL,
typeof INT NOT NULL,
price DECIMAL(6,2) NOT NULL,
instock INT NOT NULL,
indate DATETIME NOT NULL,
invalue INT NOT NULL,
PRIMARY KEY(pid)
)

--添加商品數據
INSERT INTO Products VALUES('001','Rival 600','滑鼠規格內容1',0,89.99,50,now(),50),('002','Rival 310','滑鼠規格內容2',0,69.99,28,now(),30),('003','Sensei 310','滑鼠規格內容3',0,69.99,22,now(),28),('004','Rival 110','滑鼠規格內容4',0,39.99,18,now(),26),('005','APEX M750','鍵盤規格內容1',1,149.99,10,now(),18),('006','APEX 150','鍵盤規格內容2',1,129.99,36,now(),64),('007','APEX M500','鍵盤規格內容3',1,69.99,35,now(),38),('008','APEX M750 TKL','鍵盤規格內容4',1,119.99,46,now(),66),('009','Arctis 7','耳機規格內容1',2,179.99,50,now(),52),('010','Arctis 5','耳機規格內容2',2,129.99,32,now(),68),('011','Arctis 3','耳機規格內容3',2,149.99,22,now(),36),('012','Arctis 3 PRO','耳機規格內容4',2,99.99,20,now(),28)

--添加商品數據
----------------------------------------滑鼠類----------------------------------------
INSERT INTO Products VALUES('001','Rival 600','滑鼠規格內容1',0,89.99,50,now(),50)
INSERT INTO Products VALUES('002','Rival 310','滑鼠規格內容2',0,69.99,28,now(),30)
INSERT INTO Products VALUES('003','Sensei 310','滑鼠規格內容3',0,69.99,22,now(),28)
INSERT INTO Products VALUES('004','Rival 110','滑鼠規格內容4',0,39.99,18,now(),26)
--------------------------------------------------------------------------------------

----------------------------------------鍵盤類----------------------------------------
INSERT INTO Products VALUES('005','APEX M750','鍵盤規格內容1',1,149.99,10,now(),18)
INSERT INTO Products VALUES('006','APEX 150','鍵盤規格內容2',1,129.99,36,now(),64)
INSERT INTO Products VALUES('007','APEX M500','鍵盤規格內容3',1,69.99,35,now(),38)
INSERT INTO Products VALUES('008','APEX M750 TKL','鍵盤規格內容4',1,119.99,46,now(),66)
--------------------------------------------------------------------------------------

----------------------------------------耳機類----------------------------------------
INSERT INTO Products VALUES('009','Arctis 7','耳機規格內容1',2,179.99,50,now(),52)
INSERT INTO Products VALUES('010','Arctis 5','耳機規格內容2',2,129.99,32,now(),68)
INSERT INTO Products VALUES('011','Arctis 3','耳機規格內容3',2,149.99,22,now(),36)
INSERT INTO Products VALUES('012','Arctis 3 PRO','耳機規格內容4',2,99.99,20,now(),28)
--------------------------------------------------------------------------------------

select * from Products

--創建訂單資料表(Orders)
CREATE TABLE Orders(
oid VARCHAR(12) NOT NULL,
mid VARCHAR(10),
saledate DATETIME NOT NULL,
PRIMARY KEY(oid),
foreign key (mid) references Members(mid)
)

--添加數據資料
INSERT INTO Orders VALUES('201701220001','m0001',now()),('201701220002','m0002',now()),('201701220003','m0005',now()),('201701220004','m0002',now()),('201701220005','m0004',now())

INSERT INTO Orders VALUES('201701220001','m0001',now())
INSERT INTO Orders VALUES('201701220002','m0002',now())
INSERT INTO Orders VALUES('201701220003','m0005',now())
INSERT INTO Orders VALUES('201701220004','m0002',now())
INSERT INTO Orders VALUES('201701220005','m0004',now())

--創建訂單明細資料表(OrdersDetail)
CREATE TABLE OrdersDetail(
num INT NOT NULL AUTO_INCREMENT,
oid VARCHAR(12),
name NVARCHAR(20) NOT NULL,
qty INT NOT NULL,
price DECIMAL(6,2) NOT NULL,
PRIMARY KEY (num),
foreign key (oid) references Orders(oid)
)

--添加數據
INSERT INTO OrdersDetail VALUES(1,'201701220002','Arctis 7',1,179.99),(2,'201701220005','APEX 150',2,129.99),(3,'201701220002','Arctis 3 PRO',1,99.99),(4,'201701220001','APEX M750',1,179.99),(5,'201701220003','Arctis 5',1,129.99),(6,'201701220004','Sensei 310',1,99.99)

--添加數據
INSERT INTO OrdersDetail VALUES(1,'201701220002','Arctis 7',1,179.99)
INSERT INTO OrdersDetail VALUES(2,'201701220005','APEX 150',2,129.99)
INSERT INTO OrdersDetail VALUES(3,'201701220002','Arctis 3 PRO',1,99.99)
-----------------------------------------------------------------------
INSERT INTO OrdersDetail VALUES(4,'201701220001','APEX M750',1,179.99)
INSERT INTO OrdersDetail VALUES(5,'201701220003','Arctis 5',1,129.99)
INSERT INTO OrdersDetail VALUES(6,'201701220004','Sensei 310',1,99.99)

select * from OrdersDetail

delete from Orders where mid is null

delete from OrdersDetail where oid is null

--創建聯繫資料表
CREATE TABLE ContactUs(
Cid INT NOT NULL auto_increment,
PRIMARY KEY(Cid),
Cmail VARCHAR(20) NOT NULL,
Cname VARCHAR(10) NOT NULL,
CTel VARCHAR(12) NOT NULL,
Cmessage VARCHAR(30) NOT NULL
)

--尚未使用
--創建產品圖片資料表(ProductsImage)
CREATE TABLE ProductsImage(
id INT NOT NULL auto_increment,
pid VARCHAR(20) NOT NULL,
photo blob,
PRIMARY KEY (id),
foreign key (pid) references Products(pid)
)

--尚未使用
--創建郵件資料表(OrderMessage)
CREATE TABLE OrderMessage(
num INT NOT NULL auto_increment,
senderMail VARCHAR(30) NOT NULL,
acceptMail VARCHAR(30) NOT NULL,
title NVARCHAR(50),
content NVARCHAR(50),
senderTime DATETIME NOT NULL,
PRIMARY KEY (num)
)

--模擬git衝突
--HelloWorld
