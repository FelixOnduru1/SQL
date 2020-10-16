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