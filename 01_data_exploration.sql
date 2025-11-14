-- ========================================
-- Day 1: Chinook Database Exploration
-- ========================================

-- View all tables
SHOW TABLES;

-- ========================================
-- Preview Rows from Each Table
-- ========================================

SELECT * FROM Album LIMIT 5;
SELECT * FROM Artist LIMIT 5;
SELECT * FROM Customer LIMIT 5;
SELECT * FROM Employee LIMIT 5;
SELECT * FROM Genre LIMIT 5;
SELECT * FROM Invoice LIMIT 5;
SELECT * FROM InvoiceLine LIMIT 5;
SELECT * FROM MediaType LIMIT 5;
SELECT * FROM Playlist LIMIT 5;
SELECT * FROM PlaylistTrack LIMIT 5;
SELECT * FROM Track LIMIT 5;

-- ========================================
-- Count Total Rows in Each Table
-- ========================================

SELECT COUNT(*) AS total_albums FROM Album;
SELECT COUNT(*) AS total_artists FROM Artist;
SELECT COUNT(*) AS total_customers FROM Customer;
SELECT COUNT(*) AS total_employees FROM Employee;
SELECT COUNT(*) AS total_genres FROM Genre;
SELECT COUNT(*) AS total_invoices FROM Invoice;
SELECT COUNT(*) AS total_invoice_lines FROM InvoiceLine;
SELECT COUNT(*) AS total_media_types FROM MediaType;
SELECT COUNT(*) AS total_playlists FROM Playlist;
SELECT COUNT(*) AS total_playlist_tracks FROM PlaylistTrack;
SELECT COUNT(*) AS total_tracks FROM Track;

-- ========================================
-- Additional Basic Data Checks
-- ========================================

-- List all unique customer countries
SELECT DISTINCT Country
FROM Customer
ORDER BY Country;

-- ============================
-- Check invoice date range
-- ============================
SELECT 
    MIN(InvoiceDate) AS first_invoice_date,
    MAX(InvoiceDate) AS last_invoice_date
FROM Invoice;
