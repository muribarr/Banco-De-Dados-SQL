/*
  Liste os produtos organizados primeiro pela categpria em ordem crescente e, dentro de cada categporia, pelo preco padrao em ordem decrescente
*/

SELECT 
    ProductID, 
    ProductCategoryID,
    Name,
    ListPrice 
FROM SalesLT.Product p 
ORDER BY 
      ProductCategoryID,
      ListPrice DESC 
              
      
/* 
 * Exibir produtos com base na diferenca entre preco e o custo.
 * preço( ListPrice) e o custo (StandartCost)
 */     

SELECT 
    ProductID,
    Name,
    ListPrice as preço,
    StandardCost as Custo,
    (ListPrice - StandardCost) as MargemLucro
FROM SalesLT.Product p 
ORDER BY 
   MargemLucro DESC 
   
SELECT TOP 5
      Name,
      ListPrice
FROM SalesLT.Product p 
ORDER BY ListPrice DESC 
   

  
      
      
      
    