SELECT 
     YEAR(OrderDate),
     MONTH(OrderDate),
     SUM(TotalDue) AS TotalVendas
FROM SalesLT.SalesOrderHeader soh 
GROUP BY
   YEAR(OrderDate),
     MONTH(OrderDate)

SELECT 
    p.Name AS Categoria,
    pc.Name AS Produto,
    SUM(OrderQty) AS TotalVendas
FROM SalesLT.SalesOrderDetail sod 
    JOIN SalesLT.Product p 
        ON sod.ProductID = p.ProductID 
    JOIN SalesLT.ProductCategory pc 
        ON pc.ProductCategoryID = pc.ProductCategoryID 
GROUP BY 
    p.Name, 
    pc.Name 

SELECT
     YEAR(OrderDate) AS Ano,
     COUNT(SalesOrderID) AS TotalPedidos 
FROM SalesLT.SalesOrderHeader soh
GROUP BY  YEAR(OrderDate)

SELECT
     YEAR(OrderDate) AS Ano,
     COUNT(SalesOrderID) AS TotalPedidos 
FROM SalesLT.SalesOrderHeader soh
WHERE YEAR (OrderDate) > 2000
GROUP BY YEAR(OrderDate)
    
SELECT
     DATENAME(WEEKDAY, OrderDate) AS DiaDaSemana,
     COUNT(SalesOrderID) AS TotalPedidos
FROM SalesLT.SalesOrderHeader soh
GROUP BY DATENAME(WEEKDAY, OrderDate) 


SELECT 
    OrderDate,
    DueDate,
    DATEDIFF(DAY, OrderDate, DueDate) 
FROM SalesLT.SalesOrderHeader soh 

SELECT 
    AVG(DATEDIFF(DAY, OrderDate, DueDate) ) AS TempoMedioEntrega
FROM SalesLT.SalesOrderHeader soh 


SELECT 
    AVG(DATEDIFF(DAY, OrderDate, DueDate) ) AS TempoMedioEntrega
FROM SalesLT.SalesOrderHeader soh
WHERE DueDate IS NOT NULL



SELECT 
    SalesOrderID,
    OrderDate,
    ShipDate,
    DATEDIFF(DAY, OrderDate, DueDate) AS TempoEntrega
FROM SalesLT.SalesOrderHeader soh
WHERE DATEDIFF(DAY, OrderDate, DueDate) > 7



SELECT
      DATEPART(QUARTER, OrderDate) AS Trimestre,
      SUM(TotalDue) AS TotalVendas
FROM SalesLT.SalesOrderHeader soh
GROUP BY DATEPART(QUARTER, OrderDate) 


SELECT
      FORMAT(QUARTER, 'yyyy-mm') AS MesAno,
      DATEPART(QUARTER, OrderDate) AS Trimestre,
      SUM(TotalDue) AS TotalVendas
FROM SalesLT.SalesOrderHeader soh
GROUP BY
      DATEPART(QUARTER, OrderDate),
      FORMAT(QUARTER, 'yyyy-mm')
      
SELECT
     COUNT(SalesOrderID) AS TotalPedidoUltimo30Dias
FROM SalesLT.SalesOrderHeader soh 
WHERE OrderDate >= DATEADD(DAY, -30, GETDATE()) 

