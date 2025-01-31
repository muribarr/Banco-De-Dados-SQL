SELECT 
    c.FirstName + ' ' + c.LastName,
    MAX(OrderDate) AS Recencia,
    COUNT(c.CustomerID) AS Frequencia,
    AVG(TotalDue) AS TicketMedio
FROM SalesLT.SalesOrderHeader soh 
    JOIN SalesLT.Customer c 
        ON soh.CustomerID = c.CustomerID 
GROUP BY 
    c.CustomerID,
    c.FirstName + ' ' + c.LastName
HAVING AVG(TotalDue) > 5000
ORDER BY AVG(TotalDue) 