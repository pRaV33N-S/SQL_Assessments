Use Assignment

Create Table Employee
(EmployeeId int Primary Key,
FirstName nvarchar(50),
LastName nvarchar(50),
BirthDate date,
Salary decimal(10,2))

Insert Into Employee Values
(1, 'Rajesh', 'Kumar', '1995-05-10', 48000.00),
(2, 'Sara', 'Williams', '1987-08-17', 55000.00),
(3, 'Amit', 'Patel', '1990-03-22', 52000.00);

Create Table Product
(ProductId int Primary Key,
ProductName nvarchar(50),
Description nvarchar(50),
Price money,
ReleaseDate Datetime)

Insert Into Product Values
(1, 'Coca-Cola', 'Classic cola soft drink', 1.99, '2023-01-15'),
(2, 'Pepsi', 'Carbonated cola beverage', 1.89, '2023-02-10'),
(3, 'Sprite', 'Lemon-lime flavored soda', 1.49, '2023-03-05'),
(4, 'Mountain Dew', 'Citrus-flavored carbonated drink', 2.29, '2023-04-20');

Create Table Orders
(OrderId int Primary Key,
OrderDate datetime,
Quantity smallInt,
Discount float,
IsShipped )

Insert Into Orders Values
(1, '2023-08-01', 5, 0.1, 1),
(2, '2023-08-02', 3, 0.05, 0),
(3, '2023-08-03', 8, 0.15, 0),
(4, '2023-08-04', 2, 0.0, 1),
(5, '2023-08-05', 10, 0.2, 1);

Select * From Employee
Select * From Product
Select * From Orders