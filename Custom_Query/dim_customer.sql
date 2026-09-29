
SELECT 
    C.CustomerID,  
    C.CustomerName,  
    C.Email, 
    C.Gender,  
    C.Age,
    G.Country,  
    G.City  
FROM 
    dbo.customers as C  
LEFT JOIN
    dbo.geography G 
ON 
    c.GeographyID = g.GeographyID;  