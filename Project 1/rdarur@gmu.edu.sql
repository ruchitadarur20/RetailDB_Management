DROP TABLE Customers CASCADE CONSTRAINTS;
DROP TABLE Transactions CASCADE CONSTRAINTS;
DROP TABLE Products CASCADE CONSTRAINTS;
DROP TABLE Contains CASCADE CONSTRAINTS;


CREATE TABLE Customers (
    customer_ID NUMBER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age NUMBER CHECK (age > 0 AND age < 120),
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    zip_code VARCHAR(10)
);

-- Create Transactions table
CREATE TABLE Transactions (
    transaction_ID NUMBER PRIMARY KEY,
    customer_ID NUMBER,
    transaction_date DATE,
    total NUMBER(10, 2) CHECK (total >= 0),
    payment_method NUMBER CHECK (payment_method IN (1, 2, 3)),
    FOREIGN KEY (customer_ID) REFERENCES Customers(customer_ID) ON DELETE CASCADE
);

-- Create Products table
CREATE TABLE Products (
    upc VARCHAR(12) PRIMARY KEY,
    Product_name VARCHAR(100),
    brand VARCHAR(50),
    category VARCHAR(50),
    Product_description VARCHAR(255),
    quantity_in_stock NUMBER CHECK (quantity_in_stock >= 0),
    marked_price NUMBER(10, 2) CHECK (marked_price >= 0)
);

-- Create Contains table (with typo corrected)
CREATE TABLE Contains (
    transaction_ID NUMBER,
    upc VARCHAR(12),
    quantity NUMBER CHECK (quantity > 0),
    PRIMARY KEY (transaction_ID, upc),
    FOREIGN KEY (transaction_ID) REFERENCES Transactions(transaction_ID) ON DELETE CASCADE,
    FOREIGN KEY (upc) REFERENCES Products(upc) ON DELETE CASCADE
);



