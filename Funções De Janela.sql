SELECT 
    ProductID,
    Name AS Produto,
    COALESCE(StandardCost, ListPrice, ProductNumber)  AS CustoCorrigido,
    ROUND(ListPrice, 2) AS PrecoArredondado,
    CEILING(10.2) AS PrecoArredCima,
    FLOOR(10.8) AS PrecoArredBaixo,
    ABS(-80000) AS ValorAbsoluto,
    SIGN(StandardCost) AS StatusCusto,
    SQRT(9) AS RaizQuadrada,
    POWER(3,2) AS ElevaPotencia
FROM SalesLT.Product p

/*
    Evitando pronlemas com valores NULL
*/

SELECT 
     ProductID,
     COALESCE(StandardCost, ListPrice, 0) AS CustoCorrigido,
     CASE
     	WHEN StandardCost Is Null THEN'Sem Custo'                                   
     	WHEN StandardCost = 0 THEN 'Custo Zero'
     	ELSE 'Custo Definido'
     END AS 'StatusCusto',
     ISNULL(StandardCost, 0.00) AS CustoCorrigido2,
     NULLIF(Weight , 1016.04) AS Peso,
     Weight,
     ProductCategoryID,
     COUNT(*) OVER(PARTITION BY ProductCategoryID) AS ProdutosPorCategoria
FROM SalesLT.Product p


SELECT 
     ProductCategoryID,
     COUNT(ProductID) AS QuantidadeProdutos
FROM SalesLT.Product p
GROUP BY ProductCategoryID 
-- 5	32
-- 6	43





