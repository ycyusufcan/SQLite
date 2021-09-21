--1 

SELECT DISTINCT InvoiceId, CustomerId, total
FROM invoices
Order BY CustomerId ASC,
total DESC;

--2

SELECT DISTINCT InvoiceId, CustomerId, total
FROM invoices
Order BY total DESC,
CustomerId ASC;

--3

SELECT *
FROM invoices
WHERE total >= 10
LIMIT 10;

--4

SELECT * 
FROM invoices
WHERE total < 10
LIMIT 5;

--5

SELECT name
FROM tracks
WHERE name LIKE "B%s"

--6

SELECT *
FROM invoices
WHERE total BETWEEN 10.1 AND 20.9
ORDER BY total DESC;
