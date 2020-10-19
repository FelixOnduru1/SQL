# Filtering, Sorting and Calculating Data with SQL
Some of the benefits of filtering and sorting include:
1. Narrowing the data to what you want to retrieve.
2. Allows for specific analysis.
3. Increase query performance and speed.
4. Reduce stress on client application.
## WHERE Clause
The WHERE clause is mostly used for filtering.
 It does so by using operators such as =, <>, >, <, >=, <=, BETWEEN, IS NULL.
 ## Advanced Filtering: IN, OR, AND, NOT
 The IN operator is used to retrieve specific values.
 The OR operator returns all entries from two conditions.
 The OR operator and IN operator are almost similar but IN is much faster and can be used with a long list of options.
 The AND operator combines two conditions.
 Remember to use parantheses when you want to order evaluations between OR and AND.
 Using parantheses implies AND will be evaluated first, otherwise OR will be evaluated first.
 NOT operator is used to add condition to remove a particular value.
## Wildcards in SQL
Special character used to match parts of a value.
Helps in searching for a pattern from literal text, in a case where you know the beginning, middle or end but not other parts of the phrase.
It uses the LIKE operator.
Wildcards can not be used for numerical data.
## SORTING
Its almost to look at alll records especially where the tables are huge. Sorting can help in putting the data you want to retrieve at the top.
It uses the function ORDER BY.
It is always last in the SELECT statement. It can take multiple column names and can sort by co,umn name not retrieved.

## GROUPING DATA
Helps in summarizing subsets of data, for example finding the number of customers for a particular product.
Every column in select must be present in the GROUP BY CLAUSE, except for derived calculations.

## HAVING clause
Used to filter where data has already been grouped because WHERE does not filter grouped data.
Rows eliminated initially by WHERE clause will not be included in the group.

## Order of Clauses
1. SELECT
2. FROM
3. WHERE
4. GROUP BY
5. HAVING
6. ORDER BY