 create database LIBRARYD;   #creating new database
use LIBRARYD;  # using database
#creating tables
CREATE TABLE Author (Author_ID INT PRIMARY KEY,Name VARCHAR(100));
CREATE TABLE Publishers (PublisherID INT PRIMARY KEY,Name VARCHAR(100));
CREATE TABLE Books(BookId INT PRIMARY KEY,Title VARCHAR(100),Author_ID INT,PublisherID INT,FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID), FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID));
CREATE TABLE Members (MemberID INT PRIMARY KEY,Name VARCHAR(100),Email VARCHAR(100));
CREATE TABLE Loans (LoanID INT PRIMARY KEY,BookID INT,MemberID INT,IssueDate DATE,ReturnDate DATE,FOREIGN KEY (BookID) REFERENCES Books(BookID),FOREIGN KEY (MemberID) REFERENCES Members(MemberID)); 
#inserting values into the 5 tables created
INSERT INTO Members VALUES(1, 'Alisha Singh', 'alisha@hotmail.com'),(2, 'Bobby Khanna', 'bob@hotmail.com'),(3, 'Chandana Desai', 'chandana@hotmail.com'),(4, 'Diana Kishore', 'diana@hotmail.com'),(5, 'Eisha Singh', 'eisha@hotmail.com'),(6, 'Fatima Hussain', 'fatima@hotmail.com'),(7, 'Jeena Lee', 'jeena@hotmail.com'),(8, 'Hannah Hall', 'hannah@hotmail.com'),(9, 'Ian John', 'iana@hotmail.com'),(10, 'Janya Kashyap', 'janya@hotmail.com'),(11, 'Kiran Singh', 'kiran@hotmail.com'),(12, 'Lara Dutta', 'lara@hotmail.com'),(13, 'Sansita Swara', 'sansita@hotmail.com'),(14, 'Nina Gupta', 'nina@hotmail.com'),(15, 'Orry Thakur', 'orry@hotmail.com'),(16, 'Mohammed Harris', 'harris@hotmail.com'),(17, 'Quinn Martin', 'quinn@hotmail.com'),(18, 'Rachna Patel', 'rachna@hotmail.com'),(19, 'Steve John', 'steve@hotmail.com'),(20, 'Tina Sharma', 'tina@hotmail.com');
INSERT INTO Author (Author_ID, Name) VALUES(1, 'J.K. Rowling'),(2, 'George Orwell'),(3, 'Agatha Christie'),(4, 'Mark Twain'),(5, 'J.R.R. Tolkien'),(6, 'Jane Austen'),(7, 'Stephen King'),(8, 'C.S. Lewis'),(9, 'Ernest Hemingway'),(10, 'Dan Brown'),(11, 'Leo Tolstoy'),(12, 'Charles Dickens'),(13, 'F. Scott Fitzgerald'),(14, 'Isaac Asimov'),(15, 'Arthur Conan Doyle'),(16, 'Harper Lee'),(17, 'H.G. Wells'),(18, 'Suzanne Collins'),(19, 'Rick Riordan'),(20, 'Roald Dahl');
INSERT INTO Publishers VALUES(1, 'Bloomsbury Publishing'),(2, 'Penguin Books'),(3, 'HarperCollins'),(4, 'Hachette Book Group'),(5, 'Macmillan Publishers'),(6, 'Simon & Schuster'),(7, 'Scholastic'),(8, 'Oxford University Press'),(9, 'Random House'),(10, 'Pearson Education'),(11, 'Vintage Books'),(12, 'Pan Macmillan'),(13, 'Knopf Doubleday'),(14, 'Cambridge University Press'),(15, 'Tor Books'),(16, 'Little, Brown and Company'),(17, 'Scribner'),(18, 'Ballantine Books'),(19, 'Candlewick Press'),(20, 'Anchor Books'); 
INSERT INTO Books VALUES(101, 'Harry Potter and the Sorcerer\'s Stone', 1, 1),(102, '1984', 2, 2),(103, 'Murder on the Orient Express', 3, 3),(104, 'The Adventures of Tom Sawyer', 4, 4),(105, 'The Hobbit', 5, 5),(106, 'Pride and Prejudice', 6, 6),(107, 'The Shining', 7, 7),(108, 'The Chronicles of Narnia', 8, 8),(109, 'The Old Man and the Sea', 9, 9),(110, 'The Da Vinci Code', 10, 10),(111, 'War and Peace', 11, 11),(112, 'Oliver Twist', 12, 12),(113, 'The Great Gatsby', 13, 13),(114, 'Foundation', 14, 14),(115, 'Sherlock Holmes: A Study in Scarlet', 15, 15),(116, 'To Kill a Mockingbird', 16, 16),(117, 'The Time Machine', 17, 17),(118, 'The Hunger Games', 18, 18),(119, 'Percy Jackson and the Olympians', 19, 19),(120, 'Matilda', 20, 20);
INSERT INTO Loans VALUES(1001, 101, 1, '2025-09-01', NULL),(1002, 102, 2, '2025-09-02', '2025-09-10'),(1003, 103, 3, '2025-09-03', NULL),(1004, 104, 4, '2025-09-04', '2025-09-12'),(1005, 105, 5, '2025-09-05', NULL),(1006, 106, 6, '2025-09-06', '2025-09-14'),(1007, 107, 7, '2025-09-07', NULL),(1008, 108, 8, '2025-09-08', NULL),(1009, 109, 9, '2025-09-09', '2025-09-18'),(1010, 110, 10, '2025-09-10', NULL),(1011, 111, 11, '2025-09-11', NULL),(1012, 112, 12, '2025-09-12', '2025-09-20'),(1013, 113, 13, '2025-09-13', NULL),(1014, 114, 14, '2025-09-14', NULL),(1015, 115, 15, '2025-09-15', '2025-09-22'),(1016, 116, 16, '2025-09-16', NULL),(1017, 117, 17, '2025-09-17', '2025-09-25'),(1018, 118, 18, '2025-09-18', NULL),(1019, 119, 19, '2025-09-19', NULL),(1020, 120, 20, '2025-09-20', NULL);
# 1.query to count total books
SELECT COUNT(*) AS TotalBooks FROM Books;
#2.fetching the email of a member with the name "Janya Kashyap"
SELECT Email  FROM Member WHERE Name = 'Janya Kashyap';
#3.display books by JK rowling
SELECT B.Title FROM Books B JOIN Author A ON B.Author_ID = A.Author_ID WHERE A.Name = 'J.K. Rowling';
#4.count no of books each author has published
SELECT Author.Name AS Author, COUNT(Books.BookID) AS Book_Count FROM Author JOIN Books ON Author.Author_ID = Books.Author_ID GROUP BY Author.Author_ID, Author.Name;
#5.books along with their publisher
SELECT Books.Title, Publishers.Name AS Publishers FROM Books JOIN Publishers ON Books.PublisherID = Publishers.PublisherID;
#6.updating title where bookid is 101
UPDATE Books SET Title = 'Harry Potter and the Philosopher\'s Stone' WHERE BookID = 101;
#7.list of books in alphabetical order
SELECT * FROM Books ORDER BY Title ASC;
