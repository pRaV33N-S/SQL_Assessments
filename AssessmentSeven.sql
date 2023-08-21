USE Assignment

CREATE TABLE Books
(BookId int PRIMARY KEY,
Title nvarchar(50),
Author nvarchar(50),
Genre nvarchar(50),
Quantity int)

INSERT INTO Books (BookId, Title, Author, Genre, Quantity) VALUES 
(1, 'The Fellowship of the Ring', 'J.R.R. Tolkien', 'Fantasy', 10),
(2, 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', 'Mystery', 14),
(3, 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'Young Adult', 16),
(4, 'The Hunger Games', 'Suzanne Collins', 'Dystopian', 20),
(5, 'Second Foundation', 'Isaac Asimov', 'Science Fiction', 8);

Select * From Books