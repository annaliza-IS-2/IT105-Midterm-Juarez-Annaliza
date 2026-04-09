-- ===========================
-- USE DATABASE
-- ===========================
CREATE DATABASE IF NOT EXISTS library_system;
USE library_system;

-- ===========================
-- CREATE TABLES
-- ===========================
CREATE TABLE IF NOT EXISTS Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    BookID INT,
    Quantity INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- ===========================
-- INSERT DATA
-- ===========================
INSERT INTO Users (Name, Email) VALUES 
('Juan Dela Cruz', 'juan1@email.com'),
('Maria Santos', 'maria1@email.com'),
('Pedro Reyes', 'pedro1@email.com'),
('Ana Lopez', 'ana1@email.com'),
('Luis Ramos', 'luis1@email.com');

INSERT INTO Books (Title, Author, Price) VALUES 
('Learn SQL', 'John Doe', 500),
('Python Basics', 'Jane Smith', 450),
('Data Structures', 'Alice Tan', 600),
('Web Development', 'Mark Reyes', 550),
('Database Design', 'Luis Cruz', 700);

INSERT INTO Orders (UserID, BookID, Quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 4, 1),
(4, 5, 2);

-- ===========================
-- SELECT QUERIES
-- ===========================
SELECT * FROM Users;
SELECT * FROM Books;
SELECT * FROM Orders;

-- ===========================
-- UPDATE QUERIES
-- ===========================
UPDATE Users SET Name = 'Maria Updated' WHERE UserID = 2;
UPDATE Books SET Price = 650 WHERE BookID = 3;

-- ===========================
-- DELETE QUERIES
-- ===========================
DELETE FROM Users WHERE UserID = 5;
DELETE FROM Books WHERE BookID = 5;

-- ===========================
-- JOIN QUERY
-- ===========================
SELECT u.Name AS UserName, b.Title AS BookTitle, o.Quantity
FROM Users u
JOIN Orders o ON u.UserID = o.UserID
JOIN Books b ON o.BookID = b.BookID;

-- ===========================
-- SUBQUERY
-- ===========================
-- Users who borrowed more than 1 book
SELECT * FROM Users
WHERE UserID IN (
    SELECT UserID
    FROM Orders
    GROUP BY UserID
    HAVING SUM(Quantity) > 1
);