-- Inspecting Data
SELECT * FROM [dbo].[sales_data_sample];

--Checking Unique Values

SELECT DISTINCT STATUS FROM [dbo].[sales_data_sample];

SELECT DISTINCT STATUS FROM [dbo].[sales_data_sample];
SELECT DISTINCT YEAR_ID FROM [dbo].[sales_data_sample];
SELECT DISTINCT PRODUCTLINE FROM [dbo].[sales_data_sample];
SELECT DISTINCT country FROM [dbo].[sales_data_sample];
SELECT DISTINCT DEALSIZE FROM [dbo].[sales_data_sample];
SELECT DISTINCT territory FROM [dbo].[sales_data_sample];
SELECT distinct month_id from [dbo].[sales_data_sample]
WHERE year_id =2005
ORDER BY 1;

-- ANALZING 
-- GROUPING DATA BY product line

SELECT DISTINCT PRODUCTLINE,SUM(SALES) AS Sales
FROM [dbo].[sales_data_sample]
GROUP BY PRODUCTLINE
ORDER BY 2 DESC;

-- grouping sales by country
SELECT 
	country,
	ROUND(SUM(SALES),2) AS Revenue
FROM DBO.sales_data_sample
GROUP BY COUNTRY
ORDER BY 2 DESC;

-- grouping sales by country
SELECT 
	DEALSIZE,
	ROUND(SUM(SALES),2) AS Revenue
FROM DBO.sales_data_sample
GROUP BY DEALSIZE
ORDER BY 2 DESC;

-- What was the best month for sales in a specific year? How much was earned that month?

SELECT 
	MONTH_ID,
	ROUND(SUM(SALES),2) AS Revenue,
	COUNT(orderlinenumber) AS Orders
FROM DBO.sales_data_sample
WHERE Year_id =2004
GROUP BY MONTH_ID
ORDER BY 2 DESC;

SELECT 
	MONTH_ID,
	PRODUCTLINE,
	ROUND(SUM(SALES),2) AS Revenue,
	COUNT(orderlinenumber) AS Orders
FROM DBO.sales_data_sample
WHERE Year_id =2004 AND MONTH_ID = 11
GROUP BY MONTH_ID,PRODUCTLINE
ORDER BY 3 DESC;

--What city has the highest number of sales in a specific country?
SELECT city, round(SUM(sales),2) AS Revenue
FROM DBO.sales_data_sample
where COUNTRY = 'USA'
GROUP BY city
ORDER BY 2 DESC;



WITH rfm_data AS (
    SELECT 
        CUSTOMERNAME, 
        SUM(sales) AS MonetaryValue,
        AVG(sales) AS AvgMonetaryValue,
        COUNT(ORDERNUMBER) AS Frequency,
        MAX(ORDERDATE) AS last_order_date,
        (SELECT MAX(ORDERDATE) FROM DBO.sales_data_sample) AS max_order_date,
        DATEDIFF(DAY, MAX(ORDERDATE), (SELECT MAX(ORDERDATE) FROM DBO.sales_data_sample)) AS Recency
    FROM DBO.sales_data_sample
    GROUP BY CUSTOMERNAME
),
rfm_quantiles AS (
    SELECT r.*,
        NTILE(4) OVER (ORDER BY Recency DESC) AS rfm_recency,
        NTILE(4) OVER (ORDER BY Frequency) AS rfm_frequency,
        NTILE(4) OVER (ORDER BY MonetaryValue) AS rfm_monetary
    FROM rfm_data r
)
SELECT 
    c.*, 
    rfm_recency + rfm_frequency + rfm_monetary AS rfm_cell,
    CONCAT(rfm_recency, rfm_frequency, rfm_monetary) AS rfm_cell_string
FROM rfm_quantiles c;
