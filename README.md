# LIBRARY-MANAGEMENT
simple and efficient library management  system for tracking books, managing members,and maintining records.
this project sets up a **Library Database System** using MySQL. It demonstrates how to design relational tables, insert sample data, and perform various SQL queries for real-world library operations.
we create a new database called LIBRARYD using the CREATE DATABASE command. Then we switch to it using USE LIBRARYD, so all our tables and data go into this database.
we create an Author table. It has two columns: Author_ID as the primary key, and Name.
Next is the Publishers table. Same structure – a unique ID and the publisher’s name.
we create the Books table. Each book has an ID and a title. It also links to an Author_ID and a PublisherID, both of which are foreign keys pointing to their respective tables.
Next is the Members table. It stores member IDs, names, and their email addresses.
Lastly, we create the Loans table to track which member borrowed which book. It also stores issue and return dates. BookID and MemberID here are foreign keys.
Then we have added 20 values in each table.
Finally we have excecuted some simple queries, first the query counts the total number of books in the library.
Then i have tried to fetch the email of one of the member, next query shows all book titles written by J.K. Rowling by joining the Books and Author tables.
Then we count how many books each author has written,then lists each book with its publisher.
Finally i have updated the record and displayed all books in alphabetical order.

This project not only reinforces fundamental SQL skills — such as table creation, data insertion, joins, and constraints — but also highlights the importance of database normalization, data consistency, and proper relational design.

