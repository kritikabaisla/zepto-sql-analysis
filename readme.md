#Zepto E-commerce SQL data analysis
Hi! This is my *first SQL data analyst project*.  
I worked with a real Zepto e-commerce dataset to practice SQL and learn how analysts explore and analyze data in the real world.  

I learned a lot about *handling raw data, doing **exploratory analysis, and getting useful **business insights* from it.  

---

## Project Overview

The goal of this project is to *simulate how a SQL data analyst works in e-commerce*:

- Explore messy product data
- Clean and organize it
- Run queries to find interesting insights
- Practice hands-on SQL skills

---

## Dataset

The dataset is from *Kaggle*(https://www.kaggle.com/datasets/palvinder2006/zepto-inventory-dataset/data?select=zepto_v1.xlsx), originally scraped from Zepto’s official product listings.  
It looks like real e-commerce inventory data. Each row is a product listing, and some products appear multiple times in different variants — just like in real life.

*Columns:*

| Column Name | What it means |
|-------------|---------------|
| name | Product name |
| category | Product category (e.g., Snacks, Drinks) |
| MRP | Maximum Retail Price |
| discount_percent | Discount on the product |
| discounted_selling_price | Price after discount |
| available_quantity | How many are in stock |
| weight_in_grams | Product weight in grams |
| out_of_stock_quantity | Quantity sold or unavailable |

---

## How I worked on it

1. *Set up database and tables* in MySQL  
2. *Imported the dataset* into the tables  
3. *Explored the data*: checked columns, missing values, duplicates  
4. *Cleaned the data*: renamed columns, removed inconsistencies  
5. *Did analysis with SQL queries*:
   - Calculated price per gram for products
   - Grouped products by weight (low, medium, bulk)
   - Found potential revenue per category
   - Identified top 10 best-value products based on discount
   - Filtered expensive products (MRP > 500) with minimal discount
   - Ranked top categories by average discount
   - Found high MRP products that are out of stock
   - Measured total inventory weight per category

---

## How to Use

1. Clone or download this repo  
2. Open zepto_analysis.sql in *MySQL Workbench* or any SQL IDE  
3. Run the queries to see all results and insights  
 

---

## My Learning

- Learned how to *organize messy real-world data*  
- Practiced *SQL queries for business analysis*  
- Learned to *interpret data in terms of business insights*  
- Got experience making a *GitHub project*  

---

## Tools Used
- **MYSQL**-For creating database,tables and running queries
- **VS code**-For writing and managing SQL files
- **Git&Github**-For version control and hosting the project