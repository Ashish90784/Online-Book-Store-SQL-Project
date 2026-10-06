											--ONLINE BOOK STORE PROJECT

CREATE DATABASE OnlineBookstore;

USE onlineBookstore;

SELECT * FROM Books;

UPDATE Books
SET Price = ROUND(Price, 2);

SELECT * FROM Books;
SELECT * FROM Customers;


ALTER TABLE Orders
ALTER COLUMN Total_Amount DECIMAL(10,2);

ALTER TABLE Books
ALTER COLUMN Price DECIMAL(10,2);

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Books
FOREIGN KEY (Book_ID)
REFERENCES Books(Book_ID);

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers
FOREIGN KEY (Customer_ID)
REFERENCES Customers(Customer_ID);

--1) Retrive all books in the 'Fiction' Genre:

SELECT * FROM Books
WHERE Genre = 'Fiction';

--2) Find books publish after the year 1950 :-

select * from Books
where Published_Year >1950;

--3) List all customers from the canada :-

SELECT * FROM Customers 
WHERE Country = 'Canada';

--4) Show order placed in November 2023 :-

select * from Orders
where Order_Date BETWEEN '2023-11-01' AND '2023-11-30';

--5) Retrive the total stock of books available :-

SELECT SUM(Stock) AS TOTAL_STOCK 
FROM Books;

--6) Find the details of the most expensive books :-

SELECT * FROM Books
ORDER BY Price DESC;

--7) Show all customers who orderd more than 1 quantity af a book :-

SELECT * FROM Orders
WHERE Quantity > '1';

--8) Retrive all orders where the total amount exceeds $20 :-

SELECT * FROM Orders
WHERE Total_Amount > '20' ;

--9) List all Genres available in the books table :-

SELECT DISTINCT Genre 
FROM Books;

--10) Find the book with the lowest stock :-

SELECT * FROM Books 
ORDER BY Stock;

--11) Calculate the total revenue generated from all orders :-

SELECT SUM(Total_Amount) AS TOTAL_REVENUE 
FROM Orders ;

--ADVANCE QUESTIONS

--1)Retrive the total numbers of books sold for each Genre :-

SELECT * FROM Orders;

SELECT B.Genre , SUM(O.Quantity) AS TOTAL_BOOKS_SOLD
FROM Orders AS O
JOIN 
Books AS B
ON O.Book_ID = B.Book_ID
GROUP BY B.Genre;

--2) Find the average price of books in the 'fantasy' Genre :-

SELECT AVG(Price) AS AVERAGE_PRICE
FROM Books
WHERE Genre = 'Fantasy';

--3) List customers who have placed at least 2 orders :-

SELECT O.Customer_ID ,C.Name, COUNT(O.Order_ID) AS OREDR_COUNT
FROM Orders AS O
JOIN 
Customers AS C
ON O.Customer_ID = C.Customer_ID
GROUP BY O.Customer_ID , C.Name
HAVING COUNT(O.Order_ID) >= 2;

--4) Find the most frequently ordered book :-

SELECT TOP 1 O.Book_ID ,B.Title, COUNT(O.Order_ID) AS ORDER_COUNT
FROM Orders AS O
JOIN
Books AS B
ON O.Book_ID = B.Book_ID
GROUP BY O.Book_ID,B.Title
ORDER BY ORDER_COUNT DESC;

 --5) Show the top 3 most expensive books of 'Fantasay' Genre :-

 SELECT TOP 3 * FROM BookS
 WHERE Genre = 'Fantasy'
 ORDER BY Price DESC;

 --6) Retrive the total quantity of books sold by each author :-

SELECT B.Author , SUM(O.Quantity) AS TOATAL_BOOKS_SOLD
FROM Orders AS O
JOIN 
Books AS B
ON O.Book_ID = B.Book_ID
GROUP BY B.Author ;

--7) List the cities where customers who spent over $30 are located :-

SELECT DISTINCT C.City , O.Total_Amount
FROM Orders AS O
JOIN
Customers AS C
ON O.customer_ID = C.Customer_ID
WHERE O.Total_Amount >30;

--8) Find the customer who spen the most on orders :-

SELECT TOP 1 C.Customer_ID , C.Name , SUM(O.Total_Amount) AS TOTAL_SPENT
FROM Orders AS O
JOIN
Customers AS C
ON O.Customer_ID = C.Customer_ID
GROUP BY C.Customer_ID, C.Name
ORDER BY TOTAL_SPENT DESC;

--9) Calculate the stock remaining after fulfilling all orders :-

SELECT  B.Book_ID, B.Title , B.Stock, COALESCE(SUM(O.Quantity),0) AS TOTAL_ORDER,
B.Stock - COALESCE(SUM(O.Quantity),0) AS REMAINING
FROM Books AS B
JOIN 
Orders AS O
ON B.Book_ID = O.Book_ID
GROUP BY B.Book_ID , B.Title,B.Stock
ORDER BY B.Book_ID;








