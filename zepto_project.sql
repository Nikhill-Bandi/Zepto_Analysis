use zepto

select * from zepto_v2

---1.Found top 10 best-value products based on discount percentage

select distinct top(10) name,mrp,discountPercent
from zepto_v2
order by discountPercent desc 

---2.Identified high-MRP products that are currently out of stock

select distinct top(10) name,mrp,outofstock
from zepto_v2
where outofstock = '1'
order by mrp desc

---3.Estimated potential revenue for each product category

select category ,sum(discountedsellingprice*availablequantity) as total_revenue
from zepto_v2 
group by category
order by total_revenue

---4.Filtered expensive products (MRP > ₹500) with discount less than 10%

select name,mrp,discountpercent
from zepto_v2
where mrp >500 and discountpercent< 10
order by discountpercent,mrp

---5.Ranked top 5 categories offering highest average discounts

SELECT TOP (5) category,ROUND(AVG(discountpercent),2) AS highest_average_discount
FROM zepto_v2
GROUP BY category
ORDER BY highest_average_discount DESC;

---6.Find the price per gram for products above 100g and sort by best value.

select distinct name, weightingms,discountedsellingprice ,
(discountedsellingprice/weightingms) as price_per_gram
from zepto_v2 
where weightingms>=100
order by price_per_gram  

---7.Grouped products based on weight into Low, Medium, and Bulk categories

SELECT DISTINCT name,
    CASE
        WHEN weightInGms < 1000 THEN 'Low'
        WHEN weightInGms < 5000 THEN 'Medium'
        ELSE 'Bulk'
    END AS weight_category
FROM zepto_v2;

---8.Measured total inventory weight per product category

SELECT
    category,
    SUM(CAST(weightInGms AS BIGINT) * CAST(availableQuantity AS BIGINT)) AS total_weight
FROM zepto_v2
GROUP BY category
order by total_weight


