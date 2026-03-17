create database project;
use project;
-- data exploration
-- count of rows
select count(*) from zepto;
-- sample data
select * from zepto;
-- null values
select * from zepto 
where Category is null
or name is null
or mrp is null
or discountPercent is null
or availableQuantity is null
or discountedSellingPrice is null
or weightInGms is null
or outOfStock is null
or quantity is null;
-- diffrent product category
select distinct category from zepto;
-- products in stock vs product out of stock
select outofstock,count(*) 
from zepto
group by outofstock;
-- product names present multiple times
select name ,count(*) 
from zepto
group by name
having count(*)>1
order by count(*) desc;
-- data cleaning
-- products with price=0
select * from zepto
where mrp=0;
delete from zepto where mrp=0;
-- convert paise to rupees
update zepto
set mrp=mrp/100.0,discountedSellingPrice=discountedSellingPrice/100.0;
select * from zepto;
-- finding buisness insights from data
-- q1-find the top 10 best value products based on the discount percentage?
select distinct name,mrp,discountpercent from zepto
order by discountpercent desc
limit 10;
-- q2 what are the products with high mrp but out of stock?
select  name,mrp from zepto 
where outofstock= 1 and mrp>200
order by mrp desc;
-- q3 calculate estimated revenue for each category.
select category ,sum(discountedSellingPrice*quantity) as'total_revenue' from zepto
group by category;
-- q4 find all the product where mrp is greater that ₹500 and discount is less than 10%
select distinct name,mrp,discountpercent from zepto
where mrp>500 and discountpercent<10;
-- q5 identify the top 5 categories offering the highest average discount percentage
select category,avg(discountpercent) as 'discount_percent' from zepto
group by category
order by avg(discountpercent) desc
limit 5;
-- q6 find the price per grams for products above 100gm and sort by best value.
select distinct name,weightInGms,discountedSellingPrice ,round(discountedSellingPrice/weightInGms,2) as 'price_per_grams'
from zepto
where weightInGms>100
order by 'price_per_gram' desc;
-- q7 group the product with categories as low,medium,bulk
select name,category,weightingms,
case when weightInGms<1000 then 'low'
     when weightInGms<5000 then 'medium'
     else'bulk'
     end as weight_category
     from zepto
     group by category,name,weightInGms
     order by weight_category;
-- q8 what is the total inventory weight per category  
select category,sum(weightInGms*quantity) as 'total_weight' 
from zepto
group by category
order by 'total_weight' desc;