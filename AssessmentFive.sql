use Assignment

Create Schema Bank

create table bank.Customer
(CId int primary key identity(1000,1),
CName nvarchar(50) not null,
CEmail nvarchar(50) not null unique,
Contact nvarchar(20) not null unique,
CPwd as  (Right(CName, 2) + convert(nvarchar(10),CId) + Left(Contact, 2)) Persisted
)

Create Table Bank.MailInfo
(CEmail nvarchar(100) Primary Key,MailDate date,MailMessage nvarchar(max))

Create Trigger Bank.trgMailToCust
On Bank.Customer
After Insert
As Begin
Insert Into Bank.MailInfo(CEmail,MailDate,MailMessage)
Select i.CEmail,GetDate(),'Your Net Banking Password is : '+i.CPwd+
'.It is valid upto 2 days only. Update it.' From Inserted i 
end

Select * From Bank.Customer

Select * From Bank.MailInfo


insert into bank.Customer(CName,CEmail,Contact) values ('Praveen','praveen@gmail.com','8508592241')
insert into bank.Customer values ('Raven','raven18@gmail.com','9524236069')










