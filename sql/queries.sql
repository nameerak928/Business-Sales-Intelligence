SELECT COUNT(*) AS TotalRows FROM Sales;
SELECT TOP 1 * FROM Sales;
SELECT 
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    COUNT(DISTINCT [Order ID]) AS TotalOrders,
    SUM(Profit) / SUM(Sales) AS ProfitMargin
FROM Sales;
SELECT 
    Category,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    SUM(Profit) / SUM(Sales) AS ProfitMargin
FROM Sales
GROUP BY Category
ORDER BY TotalSales DESC;
SELECT 
    Region,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    SUM(Profit) / SUM(Sales) AS ProfitMargin
FROM Sales
GROUP BY Region
ORDER BY TotalSales DESC;
SELECT TOP 5
    [Product Name],
    SUM(Profit) AS TotalProfit
FROM Sales
GROUP BY [Product Name]
ORDER BY TotalProfit DESC;
SELECT 
    Category,
    [Product Name],
    SUM(Profit) AS TotalProfit,
    RANK() OVER (PARTITION BY Category ORDER BY SUM(Profit) DESC) AS ProfitRank
FROM Sales
GROUP BY Category, [Product Name]
ORDER BY Category, ProfitRank;
SELECT 
    [Customer Name],
    SUM(Sales) AS TotalSpent
FROM Sales
GROUP BY [Customer Name]
HAVING SUM(Sales) > (
    SELECT AVG(CustomerTotal) 
    FROM (
        SELECT SUM(Sales) AS CustomerTotal
        FROM Sales
        GROUP BY [Customer Name]
    ) AS CustomerAverages
)
ORDER BY TotalSpent DESC;S