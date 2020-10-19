/*The WHERE Clause. The setup is as follows:
SELECT (culumns)
FROM (table)
WHERE (operator)*/

/* Filtering on a single condition i.e filtering Contoso Ltd. from all the suppliers.
Double quotes used for strings that are not values.*/
SELECT Supplier,
Category,
[Payment Days]
FROM Dimension.Supplier
WHERE Supplier='Contoso, Ltd.';

/*Filtering on a single value i.e filtering for payment day less than 10*/
SELECT Supplier,
Category,
[Payment Days]
FROM Dimension.Supplier
WHERE [Payment Days]<=10;

/*Filtering all except for a specific i.e retrieving all suppliers except Contoso Ltd.*/
SELECT Supplier,
Category,
[Payment Days]
FROM Dimension.Supplier
WHERE Supplier<>'Contoso, Ltd.';

/*Filtering for a range i.e for payment days between 10 and 30*/
SELECT Supplier,
Category,
[Payment Days]
FROM Dimension.Supplier
WHERE [Payment Days] BETWEEN 10 AND 30;

/*Filtering for Null values i.e checking whether there is a supplier whose info is not included*/
SELECT Supplier,
Category,
[Payment Days]
FROM Dimension.Supplier
WHERE Supplier IS NULL

/*ADVANCED FILTERING*/
/*IN Operator i.e retrieving specifically for purchase keys 140, 172 and 187*/
SELECT [Purchase Key],
[Supplier Key],
[Ordered Quantity]
FROM Fact.Purchase
WHERE [Purchase Key] IN (140, 172, 187)

/* OR Operator i.e retrieving specifically supplier key 17 or 20*/
SELECT [Purchase Key],
[Supplier Key],
[Ordered Quantity]
FROM Fact.Purchase
WHERE [Supplier Key]= 17 OR [Supplier Key] = 20

/*AND Operator i.e package type is carton and WWI Purchase ID is 2*/
SELECT Package,
[WWI Purchase Order ID],
 [Purchase Key],
[Supplier Key],
[Ordered Quantity]
FROM Fact.Purchase
WHERE Package = 'Carton' AND [WWI Purchase Order ID] = 2

/* OR with AND i.e retrieves packages of type carton with order quanities of 24 or 72*/
SELECT Package,
[WWI Purchase Order ID],
 [Purchase Key],
[Supplier Key],
[Ordered Quantity]
FROM Fact.Purchase
WHERE ([Ordered Quantity] = 24 OR [Ordered Quantity] = 72)
AND Package = 'Carton'

/* NOT Operator i.e retrieve all customers but not those in Georgia*/
SELECT [State Province],
Country,
City
FROM Dimension.City
WHERE NOT [State Province] = 'Georgia'

/*NOT with AND i.e retrieve all customers but not those in Georgia neither those in the city of Carrollton*/
SELECT [State Province],
Country,
City
FROM Dimension.City
WHERE NOT [State Province] = 'Georgia' AND NOT City = 'Carrollton'

/*Wildcards*/
/*Matching a single character*/
SELECT Employee
FROM Dimension.Employee
WHERE Employee LIKE 'Amy Tref_'

/*Matching anything that starts with a particular phrase*/
SELECT Employee
FROM Dimension.Employee
WHERE Employee LIKE 'Stella Rose%'

/*Matching anything that ends with a particular phrase*/
SELECT Employee
FROM Dimension.Employee
WHERE Employee LIKE '%Rosenhain'

/*Matching anything with a particular phrase in the middle*/
SELECT Employee
FROM Dimension.Employee
WHERE Employee LIKE '%Rose%'

/*Matching anything in a case where you know the beginning and the end*/
SELECT Employee
FROM Dimension.Employee
WHERE Employee LIKE 'Stella%hain'

/*Sorting with ORDER BY*/
/*Sorting by the column position i.e orders the column Employee alphabetically*/
SELECT Employee,
[Preferred Name],
[Employee Key]
FROM Dimension.Employee
ORDER BY 1
/*Sorting in either ascending or descending order*/
SELECT Employee,
[Preferred Name],
[Employee Key]
FROM Dimension.Employee
ORDER BY [Employee Key] DESC

/*Using GROUP BY to select sales territories for each state province*/
SELECT COUNT([Sales Territory]) AS num_sales_territories,
[State Province]
FROM Dimension.City
GROUP BY [State Province]

/*HAVING clause to implement conditions for grouped data*/
SELECT COUNT([Sales Territory]) AS num_sales_territories,
[State Province]
FROM Dimension.City
GROUP BY [State Province]
HAVING COUNT([Sales Territory]) >= 2000

/*Combining all clauses*/
SELECT [State Province],
COUNT([Sales Territory]) AS num_sales_territories
FROM Dimension.City
WHERE  [State Province] IN ('Texas', 'New York', 'California')
GROUP BY [State Province]
HAVING COUNT([Sales Territory]) >= 2000
ORDER BY COUNT([Sales Territory]) DESC



