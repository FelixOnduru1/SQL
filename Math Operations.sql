/*SUM() function*/
SELECT SUM([Ordered Quantity]) AS total_quantity
FROM fact.Purchase

/*COUNT() function*/
/*When an asterisk is used it includes null values*/
SELECT COUNT(*) AS total_orders
FROM fact.Purchase

/* Does not include null values*/
SELECT COUNT([Ordered Quantity]) AS total_orders
FROM fact.Purchase

/*AVG() function*/
SELECT AVG([Ordered Quantity]) AS avg_quantity
FROM fact.Purchase

/*MAX () and MIN () function*/
SELECT MAX([Ordered Quantity]) AS max_quantity,
MIN([Ordered Quantity]) AS min_quantity
FROM fact.Purchase

/*DISTINCT () function*/
SELECT COUNT(DISTINCT([Preferred Name]))
FROM Dimension.Employee