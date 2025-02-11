# RetailDB_Management
Database system for managing transactions and inventory

# RetailDB Management (or your chosen project name)

## 📌 Project Overview
This repository contains a relational database system designed to efficiently manage transactions, customers, and products. The database structure follows a well-defined ER diagram, which has been converted into relational schemas and implemented using Oracle SQL.

## 📂 Repository Structure

📁 Project Root
├── 📄 ER_Diagram.pdf (ER diagram representation of the database)
├── 📄 Relational_Schemas.pdf (Schemas converted from ER diagram)
├── 📄 Database_Tables.sql (SQL script to create tables and constraints)
├── 📄 Sample_Data.sql (SQL script with sample data for testing)
├── 📄 Execution_Log.txt (Log output from SQL execution)
├── 📄 README.md (This file – project documentation)


## 📊 Database Design
### **🔹 Entities & Attributes**
- **Customers**
  - `CUSTOMER_ID` (Primary Key)
  - `FIRST_NAME`, `LAST_NAME`
  - `AGE`, `GENDER`, `ZIP_CODE`
- **Transactions**
  - `TRANSACTION_ID` (Primary Key)
  - `TRANSACTION_DATE`, `TOTAL`, `PAYMENT_METHOD`
  - `CUSTOMER_ID` (Foreign Key)
- **Products**
  - `UPC` (Primary Key)
  - `PRODUCT_NAME`, `CATEGORY`, `MARKED_PRICE`, `STOCK_QUANTITY`
- **Contains (Junction Table)**
  - `TRANSACTION_ID` (Foreign Key)
  - `UPC` (Foreign Key)
  - `QUANTITY`

## ⚡ Getting Started
### **1️⃣ Setting Up the Database**
1. Install **Oracle SQL Developer** or any SQL client.
2. Connect to your Oracle database (Zeus server or local).
3. Run the `Database_Tables.sql` file to create the schema.
4. Insert sample data using `Sample_Data.sql`.

### **2️⃣ Running Queries**
- Execute `SELECT * FROM Customers;` to verify the data.
- Perform sample queries to test transactions and relationships.

## ✅ Features
✔️ **Structured ER-to-Relational Mapping**  
✔️ **Primary & Foreign Key Constraints**  
✔️ **Data Integrity & Validation Rules**  
✔️ **Transaction-Product Relationship Management**  

## 📜 License
This project is for **educational purposes** only.

---

### **🚀 Next Steps**
- Add **stored procedures** for transaction handling.
- Implement **triggers** for automatic stock updates.
- Design **views** for better data accessibility.

---

Once you create the `README.md` file, **commit and push it** to your repository.


