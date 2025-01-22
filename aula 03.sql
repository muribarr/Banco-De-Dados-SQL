/* 
   Criando colunas / variéveis
   utilizando o comando CASE WHEN (estrutura condicional do SQL)
*/
Select Top 100
    UnitPriceDiscount,
	CASE
	    WhEN UnitPriceDiscount != 0 then 'Sim'
		Else 'Não'
	END AS teve_desconto
From [SalesLT].[SalesOrderDetail]