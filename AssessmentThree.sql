USE Assignment

--Part A--

CREATE TABLE CompanyInfo
(CId int Primary Key,
CName nvarchar(50))

CREATE TABLE ProductInfo
(PId int Primary Key,
PName nvarchar(50),
PPrice float,
PMDate date,
CId int)

INSERT INTO CompanyInfo VALUES (1,'Samsung'),(2,'HP'),(3,'Apple'),(4,'Dell'),(5,'Toshiba'),(6,'RedMi')
INSERT INTO ProductInfo VALUES 
(101,'Laptop',55000.90,'12/12/2023',1),
(102,'Laptop',35000.90,'12/12/2012',2),
(103,'Mobile',15000.90,'12/03/2012',2),
(104,'Laptop',135000.90,'12/12/2012',3),
(105,'Mobile',65000.90,'12/12/2012',3),
(106,'Laptop',35000.90,'12/12/2012',5),
(107,'Mobile',35000.90,'12/01/2012',5),
(108,'Earpod',1000.90,'12/01/2022',3),
(109,'Laptop',85000.90,'12/12/2021',6),
(110,'Mobile',55000.70,'12/12/2020',1)

--1
SELECT C.CName,P.PName,P.PPrice,P.PMDate 
FROM CompanyInfo as C
JOIN ProductInfo as P
ON C.CId=P.CId 
ORDER BY C.CName
--2
SELECT P.PName,C.CName 
FROM ProductInfo as P
JOIN CompanyInfo as C
ON C.CID=P.CId
ORDER BY C.CName
--3
SELECT C.CName,P.PName 
FROM CompanyInfo C
CROSS JOIN ProductInfo P

--Part B--

CREATE TABLE Products
(PId int Primary Key,
PName nvarchar(50) not null,
PPrice float not null,
Discount float not null)

INSERT INTO Products VALUES
(1,'FaceWash',190,10),
(2,'Trimmer',4800,12.5),
(3,'Washing Machine',16650,8.3)

INSERT INTO Products VALUES
(4,'Soap',100,10)

CREATE FUNCTION CalcDiscount
(@pri float,
@disc float)
RETURNS float
AS BEGIN
DECLARE @DiscPri float;
SET @DiscPri=@Pri-@pri*(@disc/100)
RETURN @DiscPri
END

SELECT PId,PName,PPrice,Discount,dbo.CalcDiscount(PPrice,Discount) as 'Price After Discount' 
FROM Products
