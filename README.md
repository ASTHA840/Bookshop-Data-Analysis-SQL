# 📚 Bookshop SQL Data Analysis Project

**Author:** Astha Gautam  
**Database:** Bookshop  
**Technology:** Microsoft SQL Server (T-SQL)

## 📌 Project Overview

The Bookshop SQL Project is a data analysis project developed using Microsoft SQL Server. It focuses on analyzing book information, customer details, order patterns, sales revenue, and inventory.

This project includes basic and advanced SQL queries to retrieve information, perform calculations, analyze customer purchasing behavior, and understand bookshop sales and stock.

## 🎯 Project Objectives

- Analyze book details, genres, prices, and publication years.
- Retrieve customer information based on location.
- Analyze orders by date, quantity, and total amount.
- Calculate total book stock and revenue generated.
- Identify popular books and high-value customers.
- Analyze sales by genre and author.
- Calculate remaining stock after accounting for ordered quantities.

## 🛠️ Tools and Technologies

- **Microsoft SQL Server** — Database management and query execution.
- **SQL (T-SQL)** — Data retrieval, filtering, aggregation, and analysis.
- **CSV Files** — Source data for the project.
- **GitHub** — Project documentation and version control.

## 🔗 Database Relationships

The project uses three tables: `Books`, `Customers`, and `Orders`.

- `Orders.Customer_ID` connects to `Customers.Customer_ID`.
- `Orders.Book_ID` connects to `Books.Book_ID`.

These relationships allow customer, book, and order information to be combined using SQL JOIN operations.

## 🗄️ Database Setup

Create the database in Microsoft SQL Server:

```sql
CREATE DATABASE bookshop;
GO

USE bookshop;
GO
```

Import the provided CSV files into SQL Server and ensure that the table names and column names match those used in the queries.

**Note:** Creating the database does not automatically create the tables or import the data.

## 📊 Project Queries

### 1. Basic SQL Queries

1. Count the books belonging to the Fiction genre.
2. Find books published after 1950.
3. List all customers from Canada.
4. Retrieve orders placed in November 2023.
5. Calculate the total stock of books available.
6. Find the details of the most expensive book.
7. Retrieve orders where the quantity is greater than one.
8. Find orders where the total amount exceeds $20.
9. List all distinct genres available in the Books table.
10. Find the book with the lowest stock.
11. Calculate the total revenue generated from all orders.

### 2. Advanced SQL Queries

1. Calculate the total quantity of books sold for each genre.
2. Find the average price of books in the Fantasy genre.
3. List customers who have placed at least two orders.
4. Identify the most frequently ordered book.
5. Find the top three most expensive books in the Fantasy genre.
6. Calculate the total quantity of books ordered for each author.
7. List cities associated with customers whose orders exceed $30.
8. Identify the customer who spent the most on orders.
9. Calculate the remaining stock after accounting for ordered quantities.

## 📈 Key Analysis Areas

### Book Analysis
- Explore book genres and publication years.
- Identify expensive books.
- Find books with low stock.
- Calculate average prices for specific genres.

### Customer Analysis
- Filter customers by country.
- Identify repeat customers.
- Compare total spending by customer.
- Analyze cities associated with qualifying orders.

### Sales Analysis
- Calculate total revenue.
- Analyze quantities ordered by genre and author.
- Identify frequently ordered books.
- Filter orders based on dates and order amounts.

### Inventory Analysis
- Calculate total recorded stock.
- Identify books with the lowest stock.
- Compare stock with ordered quantities.
- Calculate estimated remaining stock.



## 🚀 Conclusion

The Bookshop SQL Data Analysis Project demonstrates how SQL can be used to analyze bookshop data, customer information, orders, revenue, and inventory.

This project provides practical experience with data filtering, aggregate functions, grouping, joins, subqueries, date-based analysis, and inventory calculations.

It is a useful project for developing SQL querying, problem-solving, and data analysis skills.

---

**Created by Astha Gautam**

*SQL | Data Analysis | Microsoft SQL Server*
