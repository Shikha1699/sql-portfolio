-- ========================================
-- Day 1: Sorting & Basic Aggregations
-- ========================================

-- 1. Customers listed alphabetically by last name
SELECT FirstName, LastName
FROM Customer
ORDER BY LastName;

-- 2. Top 10 highest invoice totals
SELECT InvoiceId, CustomerId, Total, BillingCountry
FROM Invoice
ORDER BY Total DESC
LIMIT 10;

-- 3. Countries with the smallest total invoice amounts
SELECT BillingCountry, SUM(Total) AS TotalAmount
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalAmount
LIMIT 5;

-- 4. Most recent 5 invoices
SELECT InvoiceId, InvoiceDate
FROM Invoice
ORDER BY InvoiceDate DESC
LIMIT 5;
