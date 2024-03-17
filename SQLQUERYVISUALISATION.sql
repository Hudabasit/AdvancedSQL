-- Create the Sales database if it doesn't exist (SQLite doesn't have explicit CREATE DATABASE)

-- Create the Orders table
CREATE TABLE IF NOT EXISTS Orders (
    OrderID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID INTEGER,
    OrderDate DATE,
    Product TEXT,
    Quantity INTEGER,
    Amount NUMERIC(10, 2)
);

-- Insert sample data into the Orders table
-- Orders Table Sample Entries
INSERT INTO Orders (CustomerID, OrderDate, Product, Quantity, Amount)
VALUES
    (101, '2023-01-15', 'Laptop', 2, 1999.98),
    (102, '2023-01-16', 'Smartphone', 3, 1799.97),
    (103, '2023-01-17', 'T-Shirt', 5, 99.95),
    (104, '2023-01-18', 'Sofa', 1, 499.99),
    (105, '2023-01-20', 'Book: "The Great Gatsby"', 4, 51.96),
    (106, '2023-01-22', 'Laptop', 1, 999.99),
    (107, '2023-01-23', 'Smartwatch', 3, 749.97),
    (108, '2023-01-25', 'Dress Shirt', 2, 159.96),
    (109, '2023-01-27', 'Coffee Table', 1, 299.99),
    (110, '2023-01-28', 'Mystery Novel', 2, 29.98),
    (111, '2023-01-30', 'Refrigerator', 1, 899.99),
    (112, '2023-02-01', 'Action Figure', 4, 79.96),
    (113, '2023-02-03', 'Smartphone', 2, 1199.98),
    (114, '2023-02-05', 'Dress Shirt', 3, 119.97),
    (115, '2023-02-07', 'Coffee Table', 2, 599.98),
    (116, '2023-02-10', 'Smartwatch', 1, 249.99),
    (117, '2023-02-12', 'Mystery Novel', 3, 44.97),
    (118, '2023-02-14', 'Laptop', 1, 1999.99),
    (119, '2023-02-16', 'T-Shirt', 2, 39.98),
    (120, '2023-02-18', 'Sofa', 1, 599.99),
    (121, '2023-02-20', 'Book: "To Kill a Mockingbird"', 5, 64.95),
    (122, '2023-02-22', 'Smartphone', 2, 899.98),
    (123, '2023-02-24', 'Action Figure', 4, 79.96),
    (124, '2023-02-26', 'Dress Shirt', 3, 119.97),
    (125, '2023-02-28', 'Coffee Table', 1, 299.99),
    (126, '2023-03-02', 'Smartwatch', 2, 499.98),
    (127, '2023-03-05', 'Laptop', 1, 1299.99),
    (128, '2023-03-07', 'Book: "The Catcher in the Rye"', 3, 44.97),
    (129, '2023-03-09', 'Sofa', 1, 799.99),
    (130, '2023-03-11', 'T-Shirt', 2, 39.98),
    (131, '2023-03-14', 'Smartphone', 1, 699.99),
    (132, '2023-03-16', 'Action Figure', 3, 59.97),
    (133, '2023-03-18', 'Dress Shirt', 2, 79.98),
    (134, '2023-03-20', 'Coffee Table', 1, 399.99),
    (135, '2023-03-22', 'Smartwatch', 2, 399.98),
    (136, '2023-03-24', 'Book: "Pride and Prejudice"', 4, 59.96),
    (137, '2023-03-26', 'Laptop', 1, 1499.99),
    (138, '2023-03-28', 'Sofa', 2, 999.98),
    (139, '2023-03-30', 'T-Shirt', 3, 59.97),
    (140, '2023-04-01', 'Smartphone', 1, 799.99),
    (141, '2023-04-03', 'Action Figure', 2, 39.98),
    (142, '2023-04-05', 'Dress Shirt', 1, 39.99),
    (143, '2023-04-07', 'Coffee Table', 3, 899.97),
    (144, '2023-04-09', 'Smartwatch', 1, 199.99),
    (145, '2023-04-11', 'Book: "Harry Potter and the Sorcerers Stone"', 2, 19.98),
    (146, '2023-04-13', 'Laptop', 2, 2499.98),
    (147, '2023-04-15', 'Sofa', 1, 599.99),
    (148, '2023-04-17', 'T-Shirt', 4, 79.96),
    (149, '2023-04-19', 'Smartphone', 1, 599.99),
    (150, '2023-04-21', 'Action Figure', 3, 59.97);


-- Create the Departments table
CREATE TABLE IF NOT EXISTS Departments (
    DepartmentID INTEGER PRIMARY KEY AUTOINCREMENT,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Create the Employees table
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INTEGER,
    Salary DECIMAL(10, 2),
    HireDate DATE
);

-- Insert sample data into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (101, 'HR'),
    (102, 'Finance'),
    (103, 'IT'),
    (104, 'Marketing'),
    (105, 'Management');

-- Insert sample data into the Employees table
-- Employees Table Sample Entries
INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, HireDate)
VALUES
    ('Michael', 'Smith', 103, 75000.00, '2022-01-15'),
    ('Emily', 'Johnson', 101, 80000.00, '2022-02-20'),
    ('David', 'Brown', 104, 90000.00, '2022-03-10'),
    ('Emma', 'Davis', 105, 70000.00, '2022-04-05'),
    ('James', 'Wilson', 102, 85000.00, '2022-05-12'),
    ('Olivia', 'Martinez', 103, 72000.00, '2022-06-20'),
    ('William', 'Anderson', 101, 78000.00, '2022-07-15'),
    ('Sophia', 'Garcia', 104, 95000.00, '2022-08-10'),
    ('Benjamin', 'Lopez', 105, 68000.00, '2022-09-05'),
    ('Ava', 'Thomas', 102, 82000.00, '2022-10-01'),
    ('Alexander', 'Hernandez', 103, 74000.00, '2022-11-20'),
    ('Mia', 'Young', 101, 79000.00, '2022-12-15'),
    ('Ethan', 'Scott', 104, 92000.00, '2023-01-10'),
    ('Charlotte', 'Green', 105, 67000.00, '2023-02-05'),
    ('Daniel', 'Adams', 102, 83000.00, '2023-03-01'),
    ('Amelia', 'Baker', 103, 73000.00, '2023-04-01'),
    ('Logan', 'Nelson', 101, 80000.00, '2023-05-01'),
    ('Harper', 'Evans', 104, 91000.00, '2023-06-01'),
    ('Jack', 'Turner', 105, 66000.00, '2023-07-01'),
    ('Evelyn', 'Cooper', 102, 84000.00, '2023-08-01'),
    ('Jacob', 'King', 103, 72000.00, '2023-09-01'),
    ('Abigail', 'Murphy', 101, 81000.00, '2023-10-01'),
    ('Liam', 'Collins', 104, 90000.00, '2023-11-01'),
    ('Avery', 'Gonzalez', 105, 65000.00, '2023-12-01'),
    ('Lucas', 'Perez', 102, 85000.00, '2024-01-01'),
    ('Sofia', 'Stewart', 103, 71000.00, '2024-02-01'),
    ('Jackson', 'Sanchez', 101, 82000.00, '2024-03-01'),
    ('Ella', 'Rivera', 104, 89000.00, '2024-04-01'),
    ('Michael', 'Cook', 105, 64000.00, '2024-05-01'),
    ('Madison', 'Morales', 102, 86000.00, '2024-06-01'),
    ('Carter', 'Morgan', 103, 70000.00, '2024-07-01'),
    ('Scarlett', 'Peterson', 101, 83000.00, '2024-08-01'),
    ('Noah', 'Bailey', 104, 88000.00, '2024-09-01'),
    ('Lily', 'Reed', 105, 63000.00, '2024-10-01'),
    ('Aiden', 'Kelly', 102, 87000.00, '2024-11-01'),
    ('Chloe', 'Howard', 103, 69000.00, '2024-12-01'),
    ('Mason', 'Rogers', 101, 84000.00, '2025-01-01'),
    ('Zoey', 'Gray', 104, 87000.00, '2025-02-01'),
    ('Elijah', 'Wright', 105, 62000.00, '2025-03-01'),
    ('Penelope', 'Cooper', 102, 88000.00, '2025-04-01'),
    ('Alexander', 'Sanders', 103, 68000.00, '2025-05-01'),
    ('Grace', 'Price', 101, 85000.00, '2025-06-01'),
    ('Matthew', 'Ramirez', 104, 86000.00, '2025-07-01'),
    ('Riley', 'James', 105, 61000.00, '2025-08-01'),
    ('Aubrey', 'Watson', 102, 89000.00, '2025-09-01'),
    ('Levi', 'Long', 103, 67000.00, '2025-10-01');


-- Create the Categories table
CREATE TABLE IF NOT EXISTS Categories (
    CategoryID INTEGER PRIMARY KEY AUTOINCREMENT,
    CategoryName VARCHAR(50) NOT NULL
);

-- Create the Suppliers table
CREATE TABLE IF NOT EXISTS Suppliers (
    SupplierID INTEGER PRIMARY KEY AUTOINCREMENT,
    SupplierName VARCHAR(100) NOT NULL,
    ContactName VARCHAR(50),
    ContactEmail VARCHAR(100)
);

-- Create the Products table
CREATE TABLE IF NOT EXISTS Products (
    ProductID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    CategoryID INTEGER,
    SupplierID INTEGER,
    UnitPrice DECIMAL(10, 2),
    StockQuantity INTEGER
);

-- Create the Orders table
CREATE TABLE IF NOT EXISTS Orders1 (
    OrderID INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerName VARCHAR(100) NOT NULL,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

-- Insert sample data into Categories table
INSERT INTO Categories (CategoryName)
VALUES
    ('Electronics'),
    ('Clothing'),
    ('Furniture'),
    ('Books');

-- Insert sample data into Suppliers table
INSERT INTO Suppliers (SupplierName, ContactName, ContactEmail)
VALUES
    ('Tech World', 'John Smith', 'john@techworld.com'),
    ('Fashion Empire', 'Sarah Johnson', 'sarah@fashionempire.com'),
    ('Furniture Plus', 'David Brown', 'david@furnitureplus.com'),
    ('Book Haven', 'Emily Davis', 'emily@bookhaven.com');

-- Insert sample data into Products table
INSERT INTO Products (ProductName, CategoryID, SupplierID, UnitPrice, StockQuantity)
VALUES
    ('Smartphone', 1, 1, 599.99, 50),
    ('Laptop', 1, 1, 999.99, 30),
    ('T-Shirt', 2, 2, 19.99, 100),
    ('Sofa', 3, 3, 499.99, 20),
    ('Book: "The Great Gatsby"', 4, 4, 12.99, 150);

-- Insert sample data into Orders table
INSERT INTO Orders1 (CustomerName, OrderDate, TotalAmount)
VALUES
    ('Alice Johnson', '2023-01-15', 799.98),
    ('Bob Miller', '2023-02-20', 59.97),
    ('Charlie Davis', '2023-03-10', 499.99),
    ('David Wilson', '2023-04-05', 999.99),
    ('Emma Smith', '2023-05-12', 259.75);

-- Create the Events table
CREATE TABLE IF NOT EXISTS Events (
    EventID INTEGER PRIMARY KEY AUTOINCREMENT,
    EventName VARCHAR(100) NOT NULL,
    EventDate DATE,
    EventLocation VARCHAR(100),
    TicketPrice DECIMAL(10, 2)
);

-- Insert sample data into the Events table
INSERT INTO Events (EventName, EventDate, EventLocation, TicketPrice)
VALUES
    ('Concert in the Park', '2023-07-15', 'Central Park', 25.00),
    ('Tech Conference', '2023-08-20', 'Convention Center', 150.00),
    ('Art Exhibition', '2023-09-10', 'Art Gallery', 10.00),
    ('Sports Tournament', '2023-10-05', 'Stadium', 35.00),
    ('Holiday Gala', '2023-12-20', 'Grand Hotel', 75.00);


SELECT *
FROM Employees;

-- Top 3 customer ranks based on their purchases

SELECT 
    CustomerID,
    SUM(Amount) AS TotalPurshaseAmount,
    RANK() OVER (ORDER BY SUM(Amount)DESC) AS CustomerRank
FROM 
    Orders
GROUP BY 
    CustomerID
ORDER BY 
    CustomerRank
LIMIT 3; 

-- Identify Quantity of previous order &
--Calculate difference between previous & current order quantities for each order

SELECT 
    OrderID,
    Product,
    Quantity,
    LAG(Quantity) OVER (ORDER BY OrderDate) AS PrevOrderQuantity,
    Quantity - LAG(Quantity) OVER (ORDER BY OrderDate) AS QuantityDifference
FROM
    Orders
ORDER BY 
    OrderDate;

-- Find Avg salary for each department
-- Identify employees who have salaries > avg in their department

SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    e.Salary,
    d.DepartmentName
FROM 
    Employees e 
INNER JOIN 
    Departments d 
ON 
    e.DepartmentID = d.DepartmentID 
WHERE
    e.Salary > (
        SELECT AVG(Salary)
        FROM Employees
        WHERE DepartmentID = e.DepartmentID
    );

-- Find employees who have highest salary in each department except IT Department

SELECT
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    e.Salary,
    d.DepartmentName
FROM
    Employees e 
INNER JOIN
    Departments d 
ON 
    e.DepartmentID = d.DepartmentID
WHERE
    e.Salary = (
        SELECT MAX(Salary)
        FROM Employees
        WHERE DepartmentID = e.DepartmentID
            AND d.DepartmentName != 'IT'
    );

-- Create CTE to identify suppliers who provide products with unit price > avg unit price
-- Retreive supplier's name and number of high value products they supply

WITH HighValueSuppliers AS (
    SELECT
    S.SupplierName,
    COUNT(P.ProductID) AS HighValueProductCount
    FROM Suppliers S 
    LEFT JOIN 
        Products P 
    ON S.SupplierID = P.SupplierID
    WHERE P.UnitPrice > (
        SELECT AVG(UnitPrice)
        FROM Products
    )
    GROUP BY S.SupplierName
)

SELECT 
    HVS.SupplierName,
    HVS.HighValueProductCount
FROM HighValueSuppliers HVS
ORDER BY HVS.HighValueProductCount DESC;

-- Create CTE Identify products w stock quantity < threshold 50 units
-- Retreive product name, category name, remaining stock quantity

WITH LowStockProducts AS (
    SELECT
        P.ProductName,
        C.CategoryName,
        P.StockQuantity
    FROM Products P 
    INNER JOIN Categories C 
    ON P.CategoryID = C.CategoryID
    WHERE 
        P.StockQuantity < 50 
)

SELECT 
    LSP.ProductName,
    LSP.CategoryName,
    LSP.StockQuantity
FROM LowStockProducts LSP;

--DATE TIME EXTRACTION
-- Find longest gap in days between two consecutive events
-- Retrieve event names and duration of longest gap

WITH EventGaps AS (
    SELECT
        E1.EventName AS Event1,
        E2.EventName AS Event2,
        JULIANDAY(E2.EventDate) - JULIANDAY(E1.EventDate) AS GapDays
    FROM Events E1
    JOIN Events E2
    ON E1.EventDate < E2.EventDate
)

SELECT
    Event1,
    Event2,
    MAX(GapDays)
FROM EventGaps;

-- Calculate total revenue earned for each month in database
-- Retrieve month and year along with total revenue

SELECT 
    STRFTIME('%Y-%m', EventDate) AS MonthYear,
    SUM(TicketPrice) AS TotalRevenue
FROM Events
GROUP BY MonthYear
ORDER BY MonthYear ;

SELECT 
    CustomerID,
    SUM(Amount) AS TotalPurshaseAmount,
    RANK() OVER (ORDER BY SUM(Amount)DESC) AS CustomerRank
FROM 
    Orders
GROUP BY 
    CustomerID
ORDER BY 
    CustomerRank
LIMIT 3;

BAR-SELECT 
    RANK() OVER (ORDER BY SUM(Amount)DESC) AS CustomerRank, 
	customerid as Customer FROM Orders 
    GROUP BY 
    CustomerID
	ORDER BY 
    CustomerRank LIMIT 3;
    


LINE-SELECT  EventDate AS label, 
	SUM(TicketPrice) AS TotalRevenue 
	FROM Events
	GROUP BY eventdate
	ORDER BY eventdate;