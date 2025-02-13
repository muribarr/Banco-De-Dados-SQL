SELECT 
     Name As NomeProdOriginal,
     UPPER(Name) As NomeMaiusculas,
     UPPER(Name) AS NomeMinusculas,
     Name + ' - ' + ProductNumber AS NomeCompleto, 
     ProductNumber,
     LEFT(ProductNumber, 5) AS Primeiros5Caracteres,
     LEFT (ProductNumber, CHARINDEX('-', ProductNumber) - 1 ) AS EsquerdaPrimeiroHifem,
     LEFT(ProductNumber, LEN(ProductNumber) - CHARINDEX('-',ProductNumber) ) AS EsquerdaSegundofen,
     REPLACE(ProductNumber,'-','') AS Substituir,
     CAST(ProductID AS NVARCHAR) + '_' + Name AS IDCONCATENANDO,
     RIGHT (REPLICATE('0',11) + CAST (ProductID AS NVARCHAR), 14) AS CNPJ_FORMATADO,
     RIGHT( REPLICATE('0',11) + 7738876000198, 14) AS CNPJ_FORMATDO_1,
     LTRIM(RTRIM(Name)) AS NameSemEspaco 
FROM SalesLT.Product p 
WHERE Name LIKE '%[0-9]'
     