/*This section looks at the basic application of SELECT and FROM
SELECT chooses the columns to be displayed on the table (what you want).
FROM chooses the table from which the columns are drawn from (where).
A common practice is to use an asterisk to choose all the columns in a particular table.
LIMIT is used to display a specific number of records from a large database.
This varies from one server to another. In a SQL Server the command is SELECT TOP*/

/* The following code produces the columns City Key, City, and State Province from the table called Dimension.City*/
SELECT [City Key],
City,
[State Province]
FROM Dimension.City

/*The followiing code selects all columns  from Dimension.City*/
SELECT *
FROM Dimension.City

/*The following code only selects first 10 rows*/
SELECT TOP 10 Country
City,
[State Province]
FROM Dimension.City

/* THATS ALL FOR THE BASIC!!!*/