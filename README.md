# Lab 8 - Product Management System (Repository Pattern)

A Product Management System built with **ASP.NET Core Razor Pages** demonstrating the **Repository Design Pattern** using ADO.NET (`Microsoft.Data.SqlClient`) connected to SQL Server LocalDB (`BMS_DB`).

## Features
- **Repository Pattern**: Clean separation of data access logic in `ProductRepository.cs`.
- **Image Upload Service**: File validation (format, size limits) and storage handling via `ProductImageService.cs`.
- **Full CRUD Operations**:
  - **Create**: Add new products with image upload, title, description, price, quantity, and availability status.
  - **Read**: View all products in a responsive table, or inspect detailed product records.
  - **Update**: Edit product details with optional image replacement.
  - **Delete**: Remove products with automatic cleanup of uploaded image files.
- **Validation**: Server-side and client-side data validation.
- **Database Script**: Complete setup script included under `Database/SetupDatabase.sql`.

## Project Structure
- `Data/ProductRepository.cs`: Data access layer containing all SQL commands and parameter handling.
- `Data/ProductImageService.cs`: Service handling image file validation, directory creation, and disk persistence.
- `Models/Product.cs`: Product entity model with data annotations.
- `Pages/Products/`: Razor Pages for Create, Read, Update, Delete, and Details.
- `Database/SetupDatabase.sql`: Database schema creation and initial seed data.

## Running in Visual Studio
1. Open Visual Studio.
2. Open [`Lab8_repo_design_SMT.sln`](file:///D:/Lab8_repo_design_SMT/Lab8_repo_design_SMT.sln).
3. Ensure the active launch profile is set to **https** or **http**.
4. Press **F5** (or click **Start Debugging** / **Lab8_repo_design_SMT**).
5. The browser will open to the home page; click **Products** in the top navigation to view and manage products.
