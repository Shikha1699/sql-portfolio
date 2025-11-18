-- =============================================
-- Day 2 : SQL Joins Practice
-- =============================================


-- =============================
-- Section 1 : INNER JOINS
-- =============================



-- 1. All tracks with their album names

SELECT 
    t.TrackId as Id  , t.Name as Track_Name, a.Title as Album_name
FROM
    track t
        INNER JOIN
    album a ON t.AlbumId = a.AlbumId;
    

-- 2. Invoices with customer names

SELECT 
    i.InvoiceId AS ID,
    C.Firstname AS Cust_Name,
    C.Lastname AS cust_lastName,
    i.BillingCountry AS Country,
    i.Total AS Total
FROM
    invoice i
        INNER JOIN
    Customer C ON i.CustomerId = C.CustomerId;


-- 3.Employees with their managers

SELECT 
    e.firstname AS Employee, m.firstname AS Manager
FROM
    employee e
        INNER JOIN
    employee m ON e.ReportsTo = m.EmployeeId;
    

-- =============================
-- Section 2 : LEFT JOINS
-- =============================


-- 1.  Albums with Artists 

SELECT 
    al.AlbumId AS ID, al.title AS Album, A.Name AS Artist_Name
FROM
    album al
        INNER JOIN
    Artist A ON al.artistid = A.artistid ;
    
    
    
-- 2. All customers and their invoices

SELECT 
    c.FirstName, c.LastName, i.InvoiceId, i.Total
FROM
    Customer c
        LEFT JOIN
    Invoice i ON c.CustomerId = i.CustomerId;



    
-- =========================================
-- Section 3 : RIGHT JOIN
-- =========================================


-- 1. All invoices and any matching customers

SELECT 
    i.InvoiceId AS Invoiceid,
    c.Firstname AS Fisrtname,
    c.Lastname AS Lastname,
    i.Total
FROM
    customer c
        RIGHT JOIN
    invoice i ON c.customerid = i.customerid;
    
    
-- ============================================
--  Section 4 : FULL OUTER JOIN (using union)
-- ============================================

-- 1. All customers & all invoices

SELECT 
    c.customerid, c.firstname, i.total
FROM
    customer c
        INNER JOIN
    invoice i ON c.customerid = i.customerid 
UNION SELECT 
    i.invoiceid, c.firstname, i.total
FROM
    customer c
        RIGHT JOIN
    invoice i ON c.customerid = i.customerid;
    
    
-- ====================================================
-- Section 5 : MULTI - TABLE JOIN
-- ====================================================


-- 1. Tracks with album title & artist

SELECT 
    t.Name AS TrackName, a.Title AS Album, ar.Name AS Artist
FROM
    Track t
        JOIN
    Album a ON t.AlbumId = a.AlbumId
        JOIN
    Artist ar ON a.ArtistId = ar.ArtistId;
    
    
    
    -- 2. Invoice line details with track, album, and customer name
    
SELECT 
    il.InvoiceLineId,
    t.Name AS Track,
    a.Title AS Album,
    c.FirstName,
    c.LastName,
    il.UnitPrice
FROM
    InvoiceLine il
        JOIN
    Track t ON il.TrackId = t.TrackId
        JOIN
    Album a ON t.AlbumId = a.AlbumId
        JOIN
    Invoice i ON il.InvoiceId = i.InvoiceId
        JOIN
    Customer c ON i.CustomerId = c.CustomerId;
    
    
    
-- ==============================================
-- Section 6 : MINI CASE STUDY
-- ==============================================


-- The top 10 customers with highest total spending   

SELECT 
    c.firstname, c.lastname, SUM(i.total) AS total_spending
FROM
    customer c
        INNER JOIN
    invoice i ON c.customerid = i.customerid
GROUP BY c.customerid
ORDER BY total_spending  DESC
LIMIT 10;

 



