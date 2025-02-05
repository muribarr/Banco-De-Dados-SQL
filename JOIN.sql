SELECT
    p.ProductID,
    Name,
    SUM(LineTotal) as TotalVendas
FROM SalesLT.SalesOrderDetail sod 
    JOIN SalesLT.Product p 
        ON sod.ProductID = p.ProductID 
GROUP BY p.ProductID, Name 


SELECT 
     p.ProductID,
     Name,
     SUM(LineTotal) as TotalVendas
FROM SalesLT.SalesOrderDetail sod 
    JOIN SalesLT.Product p 
       ON sod.ProductID = p.ProductID 
-- WHERE Color = 'Black'
GROUP BY p.ProductID, Name 
HAVING SUM(LineTotal) > 10000


SELECT 
     c.FirstName + ' ' + c.LastName AS NomeCliente,
     soh.SalesOrderID,
     OrderDate AS DT_Pedido,
     soh.TotalDue,
     p.Name AS NomeProduto,
     sod.OrderQty,
     UnitPrice AS Preco,
     UnitPriceDiscount AS Desconto,
     LineTotal
FROM SalesLT.Customer c 
    JOIN SalesLT.SalesOrderHeader soh 
        ON c.CustomerID  = soh.CustomerID 
    JOIN SalesLT.SalesOrderDetail sod 
        ON soh.SalesOrderID = sod.SalesOrderID 
    JOIN SalesLT.Product p 
        ON sod.ProductID = p.ProductID

    






















