//EXERCISE 1
SELECT CategoryName, Description
FROM Categories

//EXERCISE 2
SELECT ContactName, CustomerID, CompanyName, City
FROM Customers
WHERE City='London';

//EXERCISE 3
SELECT *
FROM Suppliers
WHERE (Fax IS NOT NULL) AND (ContactTitle='Sales Representative' OR ContactTitle='Marketing Manager');

//EXERCISE 4
SELECT CustomerID
FROM Orders
WHERE (RequiredDate BETWEEN '1997-01-01 00:00:00.000' AND '1997-12-31 00:00:00.000') AND Freight < 100;

//EXERCISE 5
SELECT CompanyName, ContactName
FROM Customers
WHERE Country='Mexico' OR Country='Sweden' OR Country='Germany';

//EXERCISE 6
SELECT COUNT (Discontinued)
FROM Products
WHERE Discontinued = 1;

//EXERCISE 7
SELECT *
FROM Categories
WHERE (CategoryName LIKE 'Co%') OR (Description LIKE 'Co%');

//EXERCISE 8
SELECT CompanyName, City, Country, PostalCode
FROM Suppliers
WHERE Address LIKE '%rue%'
ORDER BY CompanyName ASC;

//EXERCISE 9
SELECT ProductID, Quantity as 'Quantity Purchased'
FROM [Order Details]
ORDER BY [Quantity Purchased] DESC;

//EXERCISE 10
SELECT C.CompanyName, C.Address, C.City, C.PostalCode, C.Country, O.OrderDate
FROM Customers C, Orders O, Shippers S
WHERE O.ShipVia = S.ShipperID AND S.CompanyName = 'Speedy Express';

//EXERCISE 11
SELECT CompanyName, ContactName, ContactTitle, RegionDescription
FROM Suppliers, Region;

//EXERCISE 12
SELECT ProductName
FROM Products, Categories
WHERE Products.CategoryID = Categories.CategoryID AND CategoryName = 'Condiments';

//EXERCISE 13
SELECT ContactName
FROM Customers
LEFT OUTER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID 
WHERE OrderID IS NULL;

//EXERCISE 14
INSERT INTO Shippers(CompanyName)
VALUES ('Amazon');

//EXERCISE 15
UPDATE Shippers
SET CompanyName='Amazon Prime Shipping'
WHERE CompanyName='Amazon';

//EXERCISE 16



