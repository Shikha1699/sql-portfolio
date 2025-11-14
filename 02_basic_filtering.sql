-- ========================================
-- Day 1: Basic Filtering & WHERE Clause Queries
-- ========================================

-- 1. Find customers from the USA
SELECT *
FROM Customer
WHERE Country = 'USA';

-- 2. Find customers from the USA or Canada
SELECT *
FROM Customer
WHERE Country IN ('USA', 'Canada');

-- 3. Find customers whose first name starts with “A”
SELECT *
FROM Customer
WHERE FirstName LIKE 'A%';

-- 4. Find invoices greater than $10 but less than $20
SELECT *
FROM Invoice
WHERE Total > 10
  AND Total < 20
ORDER BY Total;

-- 5. Find invoices billed to Germany
SELECT InvoiceId, BillingCountry, Total
FROM Invoice
WHERE BillingCountry = 'Germany';

-- 6. Find customers with email addresses containing “gmail”
SELECT *
FROM Customer
WHERE Email LIKE '%gmail%';

-- 7. Find customers not from the USA
SELECT CustomerId, FirstName, LastName, Country
FROM Customer
WHERE Country <> 'USA';

-- 8. Find invoices from the year 2025
SELECT *
FROM Invoice
WHERE YEAR(InvoiceDate) = 2025;
