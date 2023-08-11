CREATE DATABASE ExerciseDb2

USE ExerciseDb2

CREATE TABLE Publisher(PublisherID int Primary Key,PublisherName nvarchar(50) UNIQUE NOT NULL)

CREATE TABLE Category(CategoryID int Primary Key,CategoryName nvarchar(50) UNIQUE NOT NULL)

CREATE TABLE Author(AuthorID int Primary Key,AuthorName nvarchar(50) UNIQUE NOT NULL)

CREATE TABLE Book
(BookID int Primary Key,BookName nvarchar(50) NOT NULL,
BookPrice float,Author int,Publisher int,Category int,
Foreign Key (Author) REFERENCES Author(AuthorID),
Foreign Key (Category) REFERENCES Category(CategoryId),
Foreign Key (Publisher) REFERENCES Publisher(PublisherID))

INSERT INTO Publisher (PublisherID, PublisherName) VALUES
(1, 'Sivam Publishers'),
(2, 'D&D Books'),
(3, 'Revanate Publishing');

INSERT INTO Category (CategoryID, CategoryName) VALUES
(1, 'Thriller'),
(2, 'Adventure'),
(3, 'Science Fiction');

INSERT INTO Author (AuthorID, AuthorName) VALUES
(1, 'Saranya'),
(2, 'Kirthick'),
(3, 'Praveen');

INSERT INTO Book (BookID, BookName, BookPrice, Author, Publisher, Category) VALUES
(1, 'Soul Power', 19.99, 1, 1, 1),
(2, 'Memoirs Of Modern man', 29.99, 2, 2, 2),
(3, 'Fear-The Nemesis', 14.99, 1, 1, 3),
(4, 'UnderDog', 9.99, 3, 3, 1),
(5, 'He who Explorers through the treachary Of Humanity', 24.99, 2, 2, 2),
(6, 'Tales of The Legend Killer', 17.99, 3, 1, 3);

SELECT B.BookId,B.BookName,B.BookPrice,A.AuthorName,P.PublisherName,C.CategoryName From Book b 
JOIN Author A ON B.Author=A.AuthorID 
JOIN Publisher P ON B.Publisher=P.PublisherID
JOIN Category C ON B.Category=C.CategoryID

SELECT * FROM Author ORDER BY AuthorID
SELECT * FROM Book
SELECT * FROM Category ORDER BY CategoryID
SELECT * FROM Publisher ORDER BY PublisherID


