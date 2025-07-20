
Zepto SQL Insights Report
=========================

This repository contains a structured set of SQL queries executed on the `zepto_v2` dataset to extract business-relevant insights from Zepto's product catalog.

Dataset Overview
----------------
**Table**: `zepto_v2`

### Key Columns:
- `name`: Product name
- `mrp`: Maximum Retail Price
- `discountPercent`: Discount offered (%)
- `discountedSellingPrice`: Final selling price after discount
- `availableQuantity`: Units available in stock
- `outOfStock`: 1 if out of stock, 0 otherwise
- `weightInGms`: Product weight in grams
- `category`: Product category

SQL Insights and Objectives
---------------------------

1. **Top 10 Best-Value Products**
   - Identify the top 10 products offering the highest discount percentages.

2. **High-MRP Products Currently Out of Stock**
   - Highlight premium products that are currently unavailable.

3. **Estimated Revenue by Category**
   - Calculate potential revenue per category based on current stock and selling price.

4. **Expensive Products with Low Discounts**
   - Filter products priced above ₹500 but with discounts below 10%.

5. **Top 5 Categories by Average Discount**
   - Determine categories offering the highest average discount rates.

6. **Price per Gram Calculation**
   - Analyze unit price efficiency for products weighing over 100 grams.

7. **Weight-Based Product Classification**
   - Classify products into 'Low', 'Medium', and 'Bulk' based on weight.

8. **Total Inventory Weight by Category**
   - Calculate the total weight of available inventory grouped by category.

Tools and Techniques Used
-------------------------
- SQL Aggregation, Filtering, and Sorting
- CASE Statements for categorization
- Business-centric data modeling
- Revenue and cost-efficiency estimation

Usage
-----
1. Clone this repository.
2. Load the SQL script into your SQL environment (e.g., SSMS, PostgreSQL, etc.).
3. Run queries on the `zepto_v2` table.
4. Interpret results for reporting or decision-making.

License
-------
This project is open for educational and non-commercial analytical use.

Author
------
**Nikhil Netha**  
B.Tech - Data Science, VBIT  
Aspiring Data Analyst with a passion for business intelligence and SQL-driven insights.
