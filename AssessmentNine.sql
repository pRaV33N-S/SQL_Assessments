Use Assignment

Create Table Cust
(CustId int Primary Key,
FirstName nvarchar(50),
LastName nvarchar(50),
TotalSpending decimal(10,2))

Insert Into Cust(CustId,FirstName,LastName) Values
(1, 'Shyam', 'Sundar'),
(2, 'Sanjay', 'Kumar'),
(3, 'Tamil', 'Selvan');


Create Table OrderList
(OrderId int Primary key,
CustomerId int,
OrderDate datetime,
TotalAmount decimal(10,2),
Foreign Key(CustomerId) References Cust(CustId))

Insert Into OrderList Values
(101, 1, '2023-08-23', 1500.00),
(102, 2, '2023-08-24', 2500.00),
(103, 3, '2023-08-25', 3500.00),
(104, 1, '2023-08-26', 1800.00),
(105, 3, '2023-08-27', 2100.00),
(106, 2, '2023-08-28', 3200.00),
(107, 1, '2023-08-29', 2750.00),
(108, 2, '2023-08-30', 800.00);

Select * From Cust

Select * From OrderList

Create Procedure PlaceOrder
@orderId int ,
@id int,
@total decimal(10,2)
As
Begin
Insert Into OrderList(OrderId,CustomerId,OrderDate,TotalAmount)
Values (@orderId,@id,GetDate(),@total);

Update Cust Set TotalSpending=(
Select SUM(TotalAmount) From OrderList
Where Cust.CustId=OrderList.CustomerId)

END;
