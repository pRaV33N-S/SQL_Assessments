use Assignment

Create Table Products4
(Pid int Primary Key identity(500,1),
PName nvarchar(50),
PPrice float,
PTax as PPrice*0.10 persisted,
PCompany nvarchar(50) check (PCompany In ('Samsung','Apple','Redmi','HTC','RealMe','Xiaomi')),
PQty int default 10)

Insert Into Products4(PName,PPrice,PCompany) Values
('Samsung Galaxy S21', 899.99, 'Samsung'),
('iPhone 13', 1099.99, 'Apple'),
('Redmi Note 10', 299.99, 'Redmi'),
('HTC One M9', 399.99, 'HTC'),
('RealMe 8 Pro', 249.99, 'RealMe'),
('Xiaomi Mi 11', 799.99, 'Xiaomi'),
('Samsung Galaxy A52', 449.99, 'Samsung'),
('iPhone 12', 999.99, 'Apple'),
('Redmi 9', 149.99, 'Redmi'),
('Xiaomi Poco X3', 329.99, 'Xiaomi')

Insert Into Products4(PName,PPrice,PCompany,PQty) Values
('Xiaomi Y2',398.99,'Xiaomi',25)

Select * From Products4

Create Proc Display
With Encryption
As
Begin
Select Pid,Pname,PPrice as PriceWithTax,PCompany,PQty*PPrice as TotalPrice From Products4
End

Execute Display
exec sp_helptext Display

Create Procedure TaxReturn
@Company nvarchar(50),
@TotalTax Decimal(10,2) Output
With Encryption
AS
Begin
Select @TotalTax=sum(PTax) From Products4 Where PCompany=@Company
End

DECLARE @Tax DECIMAL(10, 2)
EXEC TaxReturn 'ApPle', @Tax OUTPUT
Print @Tax

select * from products4







