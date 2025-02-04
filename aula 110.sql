SELECT
    ProductCategoryID,     
	MAX(ListPrice) AS MaiorPreco
FROM [SalesLT].[Product]
GROUP BY ProductCategoryID

SELECT
    *
FROM SalesLT.ProductCategory pc










