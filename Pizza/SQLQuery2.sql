use Pizza_DB
//
select sum(total_price) as total_revenue from pizza_sales
//
select sum(total_price)/count(distinct order_id) as Average_order_value from pizza_sales
//
select sum(quantity) as Total_pizzas_sold from pizza_sales
//
select Sum(distinct order_id) as Total_orders from pizza_sales
//
select sum(quantity)/ count(distinct order_id) as Average_Pizza_per_order from pizza_sales
//Chart Requirements
select datename(DW,order_date) as Order_day, count(distinct order_id) as Total_orders from pizza_sales
group by datename(DW,order_date)
order by Total_orders desc
 //
 select datename(month, order_date) as Month_name, count(distinct order_id) as Total_orders from pizza_sales
 group by datename(month, order_date)
 order by Total_orders Desc
 //
 select pizza_category, sum(total_price) as Total_sales, sum(total_price)*100/ (Select sum(total_price) from pizza_sales) as Total_sales_percentage
 from pizza_sales
 group by pizza_category
 //
  select pizza_size, sum(total_price) as Total_sales, sum(total_price)*100/ (Select sum(total_price) from pizza_sales) as Total_sales_percentage
 from pizza_sales
 group by pizza_size
 //
 select top 5 pizza_name, sum(total_price) as Total_Revenue from pizza_sales
 group by pizza_name
 order by  Total_Revenue desc
 //
 select top 5 pizza_name, sum(total_price) as Total_Revenue from pizza_sales
 group by pizza_name
 order by  Total_Revenue
 //
 select top 5 pizza_name, sum(quantity) as Total_Quantity from pizza_sales
 group by pizza_name
 order by  Total_Quantity desc
 //
 select top 5 pizza_name, count(distinct order_id) as Total_Orders from pizza_sales
 group by pizza_name
 order by  Total_Orders desc
 