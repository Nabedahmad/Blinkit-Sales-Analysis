select * from blinkit_data

select distinct Item_Fat_Content from blinkit_data


------------------basic questions--------------------

--1. Total revenue generated from all items sold
select cast(sum(sales)/1000000 as decimal(10,2)) as Total_Sales_Million 
from blinkit_data

--2. The average revenue per sale
select cast(avg(sales)as decimal(10,2)) as avg_sales
from blinkit_data

--3. The total count of different item sold
select count(*)as number_of_items
from blinkit_data

--4.average rating
SELECT CAST(AVG(RATING)AS DECIMAL(10,2)) AS average_rating
from blinkit_data

--------------GRANULAR REQUIREMENTS-----------------
--1.Total Sales by Fat Content
SELECT item_fat_content,
CAST(SUM(sales)AS DECIMAL(10,2)) AS total_sales,
CAST(AVG(sales)AS DECIMAL(10,2)) AS avg_sales,
COUNT(*)AS number_of_items,
CAST(AVG(RATING)AS DECIMAL(10,2))AS average_rating
FROM blinkit_data
GROUP BY Item_Fat_Content

--2.total sales by item type
SELECT Item_Type,
CAST(SUM(sales)AS DECIMAL(10,2)) AS total_sales,
CAST(AVG(sales)AS DECIMAL(10,2)) AS avg_sales,
COUNT(*)AS number_of_items,
CAST(AVG(RATING)AS DECIMAL(10,2))AS average_rating
FROM blinkit_data
GROUP BY Item_Type
ORDER BY total_sales DESC

--3. Fat Content by Outlet for Total Sales
SELECT Outlet_Location_Type,item_fat_content,
CAST(SUM(sales)AS DECIMAL(10,2)) AS total_sales,
CAST(AVG(sales)AS DECIMAL(10,2)) AS avg_sales,
COUNT(*)AS number_of_items,
CAST(AVG(RATING)AS DECIMAL(10,2))AS average_rating
FROM blinkit_data
GROUP BY Outlet_Location_Type, Item_Fat_Content
ORDER BY total_sales 

--4. Total sales by outlet establishment
SELECT Outlet_Establishment_Year,
CAST(SUM(sales)AS DECIMAL(10,2)) AS total_sales,
CAST(AVG(sales)AS DECIMAL(10,2)) AS avg_sales,
COUNT(*)AS number_of_items,
CAST(AVG(RATING)AS DECIMAL(10,2))AS average_rating
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year DESC

--5.percentage of sales by outlet size
SELECT Outlet_size,
CAST(SUM(sales) AS DECIMAL(10,2)) AS total_sales,
CAST((SUM(sales) * 100 / SUM(SUM(sales)) OVER()) AS DECIMAL(10,2)) AS sales_percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY total_sales DESC

--6. Sales by outlet locations.
SELECT Outlet_Location_Type,
CAST(SUM(sales)AS DECIMAL(10,2)) AS total_sales,
CAST((SUM(sales) * 100 / SUM(SUM(sales)) OVER()) AS DECIMAL(10,2)) AS sales_percentage,
CAST(AVG(sales)AS DECIMAL(10,2)) AS avg_sales,
COUNT(*)AS number_of_items,
CAST(AVG(RATING)AS DECIMAL(10,2))AS average_rating
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY total_sales DESC

--7.All metrics by outlet type
SELECT Outlet_Type,
CAST(SUM(sales)AS DECIMAL(10,2)) AS total_sales,
CAST((SUM(sales) * 100 / SUM(SUM(sales)) OVER()) AS DECIMAL(10,2)) AS sales_percentage,
CAST(AVG(sales)AS DECIMAL(10,2)) AS avg_sales,
COUNT(*)AS number_of_items,
CAST(AVG(RATING)AS DECIMAL(10,2))AS average_rating
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY total_sales DESC



