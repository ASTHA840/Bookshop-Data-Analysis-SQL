Create Database bookshop
Use bookshop

Select*From books
 ----Question 1

 Select Count(*) as fiction
 From Books
 
 Where genre='fiction'


 ----Question 2

 Select *
 From books
 Where Published_Year >1950

 ----	Question 3

 Select *From Customers
 Where country='Canada'


 ----------Question 4

 Select *From Orders
 Where year(order_date) =2023 and month(order_date)=11;

 ----Question 5

 Select Sum(stock)as total_books
 From books

 ------Question 6
 SELECT*FROM BOOKS
 WHERE PRICE=(SELECT MAX(PRICE)FROM BOOKS)


 -------Question 7
 Select*From Orders
 Where quantity >1


 -----Question 8
 Select*From Orders
 Where total_amount>20


 ----Question 9

 Select Distinct genre From books
 

-----------question 10


SELECT TOP 1*
 FROM BOOKS
 Order by stock ASC;


----QUESTION 11
Select SUM(Total_Amount) AS TOTAL_REVENUE
FROM Orders

----Advance Query 1
 Select b.genre ,Sum(o.quantity)as total_order_books
 From Orders o
 join books b
 On b.book_id=o.book_id
 Group By b.genre

 
 -----question 2

 Select avg(price)as average_price
 From Books
 Where genre='fantasy'




 ---QUESTION 3
 Select O.customer_id,C.name,count(O.ORDER_ID)AS ORDER_COUNT
 FROM ORDERS O
 JOIN Customers C 
 ON C.CUSTOMER_ID=O.CUSTOMER_ID
 GROUP BY O.CUSTOMER_ID,C.NAME
 HAVING COUNT(ORDER_ID)>=2


 select O.customer_id, C.NAME,COUNT(O.ORDER_ID) AS TOTAL_COUNT
 FROM ORDERS O
 JOIN CUSTOMERS C
 ON O.CUSTOMER_ID=C.CUSTOMER_ID
 GROUP BY C.NAME,O.CUSTOMER_ID
 HAVING COUNT(ORDER_ID)>=1

 ----QUESTION 4

 SELECT
 TOP 2
 O.BOOK_ID,B.TITLE,COUNT(O.ORDER_ID)AS ORDER_COUNT
 FROM Orders O
 JOIN BOOKS B
 ON O.BOOK_ID=B.BOOK_ID
 GROUP BY B.Title,O.BOOK_ID
 ORDER BY ORDER_COUNT DESC 


 -----QUESTIONS 5
 SELECT TOP 3 *FROM BOOKS
 WHERE GENRE='FANTASY'
 ORDER BY  PRICE DESC
 
 Select *from BOOKS


 -------------Question 6
 Select 
 B.AUTHOR,SUM(O.QUANTITY)AS TOTAL_BOOK_SOLD
 FROM ORDERS O
 JOIN BOOKS B
 ON B.BOOK_ID=O.BOOK_ID
 GROUP BY B.AUTHOR,O.BOOK_ID

 

 -----------Question 7
 Select Distinct c.city,total_amount
 From orders o
 join customers c
 On o.customer_id= c.customer_id
 Where o.total_amount>30

 -----Question 8
 Select Top 10
 c.customer_id,c.name,sum(o.total_amount) as total_spent
 From orders o
 join customers c
 On c.customer_id=o.customer_id
 Group by c.customer_id,c.name
 Order by total_spent Desc

-----------Question 9
Select b.book_id,b.title,b.stock,coalesce(sum(o.quantity),0)as order_quantity,
b.stock-coalesce(sum(o.quantity),0)as remaining_quantity
From books b
left join orders o 
On b.book_id=o.book_id
Group By b.book_id ,b.title,b.stock 
Order By b.book_id;

select*from orders