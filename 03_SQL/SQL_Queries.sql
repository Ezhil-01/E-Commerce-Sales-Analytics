SELECT
    ROUND(SUM(Quantity * Price), 2) AS Total_Revenue
FROM online_retail_clean;


SELECT
    COUNT(DISTINCT Invoice) AS Total_Orders
FROM online_retail_clean;


SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM online_retail_clean
WHERE `Customer ID` IS NOT NULL
  AND TRIM(`Customer ID`) <> '';


SELECT
ROUND(SUM(Quantity * Price) / COUNT(DISTINCT Invoice), 2) AS Average_Order_Value
FROM online_retail_clean;


SELECT
Description,
ROUND(SUM(Quantity * Price),2) AS Revenue
FROM online_retail_clean
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;


SELECT
Country,
ROUND(SUM(Quantity * Price),2) AS Revenue
FROM online_retail_clean
GROUP BY Country
ORDER BY Revenue DESC
LIMIT 10;


SELECT
    `Customer ID`,
    ROUND(SUM(Quantity * Price),2) AS Revenue
FROM online_retail_clean
WHERE `Customer ID` IS NOT NULL
  AND TRIM(`Customer ID`) <> ''
GROUP BY `Customer ID`
ORDER BY Revenue DESC
LIMIT 10;


SELECT
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month,
    ROUND(SUM(Quantity * Price), 2) AS Revenue
FROM online_retail_clean
GROUP BY DATE_FORMAT(InvoiceDate, '%Y-%m')
ORDER BY Month;


SELECT
ROUND(
(
    SELECT COUNT(*)
    FROM (
        SELECT `Customer ID`
        FROM online_retail_clean
        WHERE `Customer ID` IS NOT NULL
          AND TRIM(`Customer ID`) <> ''
        GROUP BY `Customer ID`
        HAVING COUNT(DISTINCT InvoiceDate) > 1
    ) AS RepeatCustomer
)
/
(
    SELECT COUNT(DISTINCT `Customer ID`)
    FROM online_retail_clean
    WHERE `Customer ID` IS NOT NULL
      AND TRIM(`Customer ID`) <> ''
)
*100,2
) AS Customer_Retention_Rate;


SELECT
Country,
COUNT(DISTINCT Invoice) AS Order_Count
FROM online_retail_clean
GROUP BY Country
ORDER BY Order_Count DESC;


SELECT
Country,
ROUND(
SUM(Quantity*Price)/COUNT(DISTINCT Invoice),2
) AS Average_Order_Value
FROM online_retail_clean
GROUP BY Country
ORDER BY Average_Order_Value DESC
LIMIT 10;


SELECT
`Customer ID`,
COUNT(DISTINCT Invoice) AS Number_of_Orders
FROM online_retail_clean
WHERE `Customer ID` IS NOT NULL
AND TRIM(`Customer ID`) <> ''
GROUP BY `Customer ID`
ORDER BY Number_of_Orders DESC
LIMIT 10;


SELECT
    DATE_FORMAT(InvoiceDate, '%b-%Y') AS Month,
    ROUND(SUM(Quantity * Price), 2) AS Revenue
FROM online_retail_clean
GROUP BY DATE_FORMAT(InvoiceDate, '%Y-%m'),
         DATE_FORMAT(InvoiceDate, '%b-%Y')
ORDER BY Revenue DESC
LIMIT 1;


SELECT
    DATE_FORMAT(InvoiceDate, '%b-%Y') AS Month,
    COUNT(DISTINCT Invoice) AS Order_Count
FROM online_retail_clean
GROUP BY DATE_FORMAT(InvoiceDate, '%Y-%m'),
         DATE_FORMAT(InvoiceDate, '%b-%Y')
ORDER BY DATE_FORMAT(InvoiceDate, '%Y-%m');

SELECT COUNT(*) AS Repeat_Customers
FROM (
    SELECT `Customer ID`
    FROM online_retail_clean
    WHERE `Customer ID` IS NOT NULL
      AND TRIM(`Customer ID`) <> ''
    GROUP BY `Customer ID`
    HAVING COUNT(DISTINCT InvoiceDate) > 1
) AS RepeatCustomers;