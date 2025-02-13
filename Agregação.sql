/*
   Agregando dados
   Medidas resumo com o SQL

   O que quero saber?
      Quais sao as medidas resumo da variavel OrderQty
         na tabela SalesOrderDetail         
*/

SELECT 
    COUNT(SalesOrderId) AS qtd_linhas,
    COUNT(OrderQty) AS qtd_linhas_preenchidas,
    SUM(OrderQty) AS soma_qtd,
    -- Medidas de posição
    MIN(OrderQty) AS qtd_minima,
    AVG(OrderQty) AS qtd_media,
    MAX(OrderQty) AS qtd_maxima,
    -- Medidas de dispensão
    STDEV(OrderQty) AS desvio_padrão,
    VAR(OrderQty) AS variancia
FROM SalesLT.SalesOrderDetail sod 
