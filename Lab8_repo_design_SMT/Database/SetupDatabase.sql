-- ==========================================================
-- Lab 8: Product Management System (Repository Pattern)
-- Database Creation & Schema Setup Script
-- ==========================================================

-- 1. Create the database if it doesn't exist
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'BMS_DB')
BEGIN
    CREATE DATABASE BMS_DB;
END
GO

USE BMS_DB;
GO

-- 2. Create the products table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'products' AND type = 'U')
BEGIN
    CREATE TABLE dbo.products (
        Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
        Title VARCHAR(50) NOT NULL,
        [description] VARCHAR(100) NOT NULL,
        [image] VARCHAR(255) NOT NULL,
        price INT NOT NULL,
        quantity INT NOT NULL,
        [status] VARCHAR(10) NOT NULL
    );
END
GO

-- 3. Seed initial sample products (optional demo data)
IF NOT EXISTS (SELECT 1 FROM dbo.products)
BEGIN
    INSERT INTO dbo.products (Title, [description], [image], price, quantity, [status])
    VALUES
    ('Gaming Headset', 'RGB surround sound headset', 'images/products/647abcd213084dd9882703448d7338ac.webp', 4500, 15, 'A'),
    ('Mechanical Keyboard', 'Compact mechanical gaming keyboard', 'images/products/e626483d540c442e9d6d92590a0cf1f2.webp', 7500, 10, 'A');
END
GO

-- 4. Verify products
SELECT Id, Title, [description], [image], price, quantity, [status] FROM dbo.products;
GO
