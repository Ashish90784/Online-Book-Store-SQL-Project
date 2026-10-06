# 📚 Online Book Store – SQL Project

## 📌 Project Overview

This project demonstrates SQL skills through the analysis of an **Online Book Store database**. The database contains information about books, customers, and orders.

The project includes SQL queries ranging from **basic data retrieval and filtering to advanced analysis using JOINs, aggregate functions, GROUP BY, HAVING, and TOP**.

The objective is to understand book sales, customer purchasing behavior, revenue, inventory, and order trends using SQL.

## 🗂️ Database Structure

The project works with three main tables:

- **Books** – Contains book details such as Book ID, Title, Author, Genre, Published Year, Price, and Stock.
- **Customers** – Contains customer information such as Customer ID, Name, Country, and City.
- **Orders** – Contains order information such as Order ID, Customer ID, Book ID, Order Date, Quantity, and Total Amount.

Foreign key relationships are established between the Orders table and the Books and Customers tables.

## 🔍 Analysis Performed

### Basic SQL Analysis

The project answers questions such as:

- Retrieve books from a specific genre.
- Find books published after a particular year.
- Identify customers from a specific country.
- Retrieve orders placed within a specific date range.
- Calculate total available book stock.
- Identify the most expensive books.
- Find orders with quantities greater than one.
- Identify orders exceeding a specific amount.
- List unique book genres.
- Find books with the lowest stock.
- Calculate total revenue generated from orders.

### Advanced SQL Analysis

The project also performs more advanced business analysis, including:

- Total books sold by genre.
- Average book price by genre.
- Customers who placed at least two orders.
- Most frequently ordered book.
- Top 3 most expensive books within a genre.
- Total books sold by each author.
- Cities of customers with higher-value orders.
- Customer who spent the most.
- Remaining inventory after fulfilling orders.

## 🛠️ SQL Concepts Used

This project demonstrates the following SQL concepts:

- `SELECT`
- `WHERE`
- `DISTINCT`
- `ORDER BY`
- `BETWEEN`
- `SUM()`
- `AVG()`
- `COUNT()`
- `GROUP BY`
- `HAVING`
- `TOP`
- `JOIN`
- `INNER JOIN`
- `COALESCE()`
- `ALTER TABLE`
- Primary Key / Foreign Key relationships
- Aggregate Functions
- Data filtering and sorting

## 💡 Business Insights

The queries can be used to understand:

- 📈 Overall book-store revenue
- 📚 Best-selling genres and authors
-
