
CREATE TABLE tblShippers(
	ShipperID INT PRIMARY KEY,
	CompanyName INT REFERENCES tblCustomers(CompanyName)
);

Select * from tblShippers;

INSERT INTO tblShippers (ShipperID, CompanyName) VALUES
(1, 'Fast Delivery Co.'),
(2, 'Quick Ship Inc.'),
(3, 'Express Logistics'),
(4, 'Global Freight Services'),
(5, 'Speedy Transport');

Select * from tblShippers;
----------------------------------------------------------------------------------------------------------------------------
CREATE TABLE tblCustomers(
	CustomerID INT PRIMARY KEY,
	CompanyName TEXT,
	ContactTitle VARCHAR(100),
	Address TEXT,
	City VARCHAR(100),
	Region VARCHAR(100),
	PostalCode INT,
	Country VARCHAR(100) DEFAULT 'Canada',
	Phone NUMBER,
	Fax VARCHAR(100)
);

Select * from tblCustomers;

INSERT INTO tblCustomers (CustomerID, CompanyName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) VALUES
(1, 'Tech Solutions', 'Manager', '123 Tech Lane', 'San Francisco', 'CA', 94105, 'USA', '415-555-0199', '415-555-0198'),
(2, 'Innovative Designs', 'Owner', '456 Design Blvd', 'Los Angeles', 'CA', 90001, 'USA', '213-555-0123', NULL),
(3, 'Green Energy Corp.', 'Director', '789 Green Way', 'Austin', 'TX', 73301, 'USA', '512-555-0145', NULL),
(4, 'Health Products Ltd.', 'CEO', '321 Wellness St.', 'Chicago', 'IL', 60601, 'USA', '312-555-0156', '312-555-0156'),
(5, 'Foodies United', 'Founder', '654 Culinary Ave.', 'New York', 'NY', 10001, 'USA', '212-555-0167', NULL);

Select * from tblCustomers;

-------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE tblOrderDetails(
	OrderID INT PRIMARY KEY,
	ProductID INT REFERENCES tblProducts(ProductID),
	UnitPrice INT,
	Quantity INT,
	Discount REAL,
);

Select * from tblOrderDetails;

INSERT INTO tblOrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES
(1, 1, 20.00, 2, 0.05),
(2, 2, 15.00, 5, 0.10),
(3, 3, 25.00, 1, 0.00),
(4, 4, 30.00, 3, 0.15),
(5, 5, 10.00, 10, 0.20);

Select * from tblOrderDetails;

--------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE tblSupplier(
	SupplierID INT PRIMARY KEY,
	Name VARCHAR(100),
	Address VARCHAR(100),
	City VARCHAR(50),
	Province VARCHAR(50)
);

Select * from tblSuppliers;

INSERT INTO tblSupplier (SupplierID, Name, Address, City, Province) VALUES
(1, 'Supplier One', '111 Supplier St.', 'Seattle', 'WA'),
(2, 'Supplier Two', '222 Supplier Rd.', 'Portland', 'OR'),
(3, 'Supplier Three', '333 Supplier Ave.', 'San Jose', 'CA'),
(4, 'Supplier Four', '444 Supplier Blvd.', 'Denver', 'CO'),
(5, 'Supplier Five', '555 Supplier Ct.', 'Miami', 'FL');

Select * from tblSuppliers;

---------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE tblProducts(
	ProductID INT PRIMARY KEY,
	SupplierID INT REFERENCES tblSuppliers(SupplierID),,
	CategoryID INT,
	ProductName VARCHAR(100),
	EnglishName VARCHAR(100),
	QuantityPerUnit INT,
	UnitPrice REAL,
	UnitInStock INT,
	UnitOnOrder INT,
	ReorderLevel INT,
	Discontinued BOOLEAN
);

Select * from tblProducts;

INSERT INTO tblProducts (ProductID, SupplierID, CategoryID, ProductName, EnglishName,
    QuantityPerUnit, UnitPrice, UnitInStock,
    UnitOnOrder, ReorderLevel,
    Discontinued) VALUES
(1, 1, 1,'Product A','Apple',
    10 ,20.00 ,100 ,50 ,20 ,FALSE),
(2 ,2 ,1,'Product B','Banana',
    20 ,15.00 ,200 ,75 ,30 ,FALSE),
(3 ,3 ,2,'Product C','Car',
    5 ,25.00 ,150 ,30 ,15 ,TRUE),
(4 ,4 ,2,'Product D','Drink',
    15 ,30.00 ,80 ,20 ,10 ,FALSE),
(5 ,5 ,3,'Product E','Energy Drink',
    12 ,10.00 ,300 ,100 ,50 ,TRUE);

Select * from tblProducts;
-----------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE tblOrders (
	OrderID INT REFERENCES tblOrderDetails(OrderID),
	EmployeeID INT,
	ShipName VARCHAR(100),
	ShipAddress TEXT,
	ShipCity VARCHAR(100),
	ShipRegion VARCHAR(100),
	ShipPostalCode INT,
	ShipCountry VARCHAR(100),
	ShipVia VARCHAR(100),
	OrderDate DATE NOT NULL,
	RequiredDate DATE,
	ShippedDate DATE CHECK (ShippedDate > OrderDate),
	CustomerID INT REFERENCES tblCustomers(CustomerID),
	Freight REAL
);

Select * from tblOrders;

INSERT INTO tblOrders (
    EmployeeID, 
    ShipName, 
    ShipAddress, 
    ShipCity, 
    ShipRegion, 
    ShipPostalCode, 
    ShipCountry, 
    ShipVia, 
    OrderDate, 
    RequiredDate, 
    ShippedDate, 
    CustomerID, 
    Freight
) VALUES
(1, 'John Smith', '123 Elm St.', 'Houston', 'TX', 77001, 'USA', 'FedEx', CURRENT_DATE - INTERVAL '5 days', CURRENT_DATE + INTERVAL '2 days', CURRENT_DATE - INTERVAL '3 days', 1, 50.00),
(2, 'Jane Doe', '456 Oak St.', 'Dallas', 'TX', 75201, 'USA', 'UPS', CURRENT_DATE - INTERVAL '10 days', CURRENT_DATE + INTERVAL '5 days', CURRENT_DATE - INTERVAL '7 days', 2, 75.00),
(3, 'Bob Johnson', '789 Pine St.', 'Austin', 'TX', 73301, 'USA', 'DHL', CURRENT_DATE - INTERVAL '15 days', CURRENT_DATE + INTERVAL '10 days', CURRENT_DATE - INTERVAL '12 days', 3, 25.50),
(4, 'Alice Brown', '321 Maple St.', 'San Antonio', 'TX', 78201, 'USA', 'USPS', CURRENT_DATE - INTERVAL '20 days', CURRENT_DATE + INTERVAL '15 days', CURRENT_DATE - INTERVAL '18 days', 4, 60.75),
(5, 'Charlie White', '654 Cedar St.', 'Phoenix', 'AZ', 85001, 'USA', 'Blue Dart', CURRENT_DATE - INTERVAL '25 days', CURRENT_DATE + INTERVAL '20 days', CURRENT_DATE - INTERVAL '22 days', 5, 90.00);

Select * from tblOrders;

-------------------------------------------------------The end------------------------------------------------------------------------
