# Library Management System

## Project Title
**Library Management System**

## System Description
This Library Management System is designed to efficiently manage users, books, and borrowing transactions in a library.  
It allows staff to add, update, and view books and users, track borrowings and returns, and quickly search records.  
The system uses a MySQL database with indexing for optimized query performance.

## Tables Description

| Table Name | Columns | Description |
|------------|---------|-------------|
| **Users** | UserID (PK), Name, Email | Stores user details and contact information |
| **Books** | BookID (PK), Title, Author, Genre, Availability | Stores book information including availability |
| **Orders** | OrderID (PK), UserID (FK), BookID (FK), BorrowDate, ReturnDate | Records borrowing transactions of books by users |

## Features Implemented
- **User Management:** Add, update, and view users
- **Book Management:** Add, update, and view books
- **Transaction Management:** Borrow and return books
- **Search Functionality:** Search for books and users
- **Database Optimization:** Indexing implemented for faster queries

## Reflection
Working on this project gave me practical experience in database design, SQL, and version control. I learned how to normalize a database from UNF to 3NF to ensure data consistency and eliminate redundancy. Writing SQL queries for table creation, inserting data, updating records, and creating indexes helped me understand how relational databases handle real-world data efficiently.  

Additionally, I strengthened my Git skills by managing commits, resolving errors, and pushing updates to GitHub. Debugging issues such as duplicate entries and missing tables taught me the importance of careful planning and testing.  

Overall, this project enhanced my understanding of relational databases, SQL, and project documentation. It provided a hands-on experience of building a functional library system while emphasizing best practices in database design and version control.