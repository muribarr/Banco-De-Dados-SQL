SELECT
    ProductID,
    SUM(LineTotal) AS TotalVendas
FROM SalesLT.SalesOrderDetail sod 
GROUP BY ProductID 
HAVING SUM(LineTotal) > 10000

-- Maior preço por categoria

SELECT 
    ProductCategoryID,
    MAX(ListPrice) AS MaiorPreco
FROM SalesLT.Product p 
GROUP BY ProductCategoryID 
ORDER BY MAX(ListPrice)

SELECT 
    ProductCategoryID,
    MAX(ListPrice) AS MaiorPreco
FROM SalesLT.Product p 
GROUP BY ProductCategoryID 
ORDER BY MAX(ListPrice) DESC 

SELECT 
    CustomerID,
    AVG(TotalDue) AS TicketMedio
FROM SalesLT.SalesOrderHeader soh 
GROUP BY CustomerID 
HAVING AVG(TotalDue) > 5000
ORDER BY AVG(TotalDue) 

-- Encontrar categorias com mais de 10 Produtos

SELECT
   COUNT(ProductCategoryID) AS NumeroDeProdutos
FROM SalesLT.Product p
GROUP BY ProductCategoryID
HAVING COUNT(ProductCategoryID) > 10


SELECT 
    CustomerID,
    MAX(OrderDate) AS Recencia,
    COUNT(CustomerID) AS Frequencia,
    AVG(TotalDue) AS TicketMedio
FROM SalesLT.SalesOrderHeader soh 
GROUP BY CustomerID 
HAVING AVG(TotalDue) > 5000
ORDER BY AVG(TotalDue) 










