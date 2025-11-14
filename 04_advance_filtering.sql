-- ========================================
-- Day 1: Advanced Filtering Using AND, OR, IN, LIKE
-- ========================================

-- 1. Customers from the USA whose email ends with ".com"
SELECT CustomerId, FirstName, LastName, Country, Email
FROM Customer
WHERE Country = 'USA'
  AND Email LIKE '%.com';

-- 2. Invoices from Brazil or Germany with totals greater than 5
SELECT *
FROM Invoice
WHERE BillingCountry IN ('Brazil', 'Germany')
  AND Total > 5;

-- 3. Customers whose first name starts with 'J'
--    OR last name starts with 'S'
SELECT CustomerId, FirstName, LastName
FROM Customer
WHERE FirstName LIKE 'J%'
   OR LastName LIKE 'S%';
