/*
O que eu quero saber?
     Categorizar Produtos por faixa Preço:
          "Barato"   - preço < 100
          "Moderado" - preço 100 e 500
          "Caro"     - preço > 500
Onde estão os dados?
    Tabela SalesLT.Product
*/

SELECT Top 100
    Name, 
    ListPrice,
    CASE 
    	WHEN ListPrice < 100 THEN 'Barato'
	    WHEN ListPrice < 500 THEN 'Moderado'
	     WHEN ListPrice >= 500 THEN 'Caro'
	    ELSE 'Indefinido'
    END AS CategoriaPreco
FROM SalesLT.Product p 



/*
* Identificaar pedidos com status personalizado: 
Mostre os pedidos com um status customizados baseado no campo Status.
    Status = 1: "Aprovado"
    Status = 2: "Em Processamento"
    Status = 3: "Finalizado"
    Outros valores: "Indefinido"
*/

SELECT
   TotalDue,
   OrderDate,
   SalesOrderID,
   CASE
        WHEN Status = 1 THEN 'Aprovado'
        WHEN Status = 2 THEN 'Em Processamento'
        WHEN Status = 3 THEN 'Finalizado'
        ELSE 'Indefinido'
   END, 
   TotalDue as ValorTotal, 
   CASE 
   	WHEN TotalDue <= 1000 THEN TotalDue * 0.05
   	WHEN TotalDue BETWEEN 1001 AND 5000 THEN TotalDue * 0.10
   	WHEN TotalDue > 5000 THEN TotalDue * 0.15
   END as ValorDesconto,
   CASE
   	WHEN TotalDue <= 1000  THEN TotalDue - (TotalDue * 0.05)
   	WHEN TotalDue BETWEEN 1001 AND 5000 THEN TotalDue - (TotalDue * 0.10)
   	WHEN TotalDue > 5000 THEN TotalDue - (TotalDue * 0.15)
   END as ValorFinal
FROM SalesLT.SalesOrderHeader 
ORDER BY ValorFinal DESC 
   

