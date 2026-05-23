


select * from pizza_sales2;


create view total_revenue as
select sum(total_price) as total_revenue from pizza_sales2;


create view average_order_value as
select sum(total_price)/count(Distinct order_id) as average_order_value from pizza_sales2;


create view total_pizza_sold as
select sum(quantity) as total_pizza_sold from pizza_sales2;


create view total_orders as
select Count(distinct order_id) as total_orders from pizza_sales2;


create view average_pizza_per_order as
select cast(cast(sum(total_price) as decimal(10,2))/
cast(count(Distinct order_id) as decimal(10,2)) as decimal(10,2)) as average_pizza_per_order from pizza_sales2;


--daily_trend_total_orders 
create view daily_trend_total_orders as
select DATENAME(DW,order_date) as order_day,count(distinct order_id) as Total_orders 
from pizza_sales2
group by  DATENAME(DW,order_date)



--monthly trend total orders
create view monthly_trend_total_orders as
select DATENAME(MONTH,order_date) as Month_name, count(distinct order_id) as Total_orders 
from pizza_sales2
group by  DATENAME(MONTH,order_date)
order by Total_orders Desc




-- % sales by pizza category

Create View sales_per_by_pizza_category as  
select pizza_category , cast(sum(total_price)  as decimal(10,2))as Totalsales,cast(sum(total_price) *100/(select sum(total_price) from pizza_sales2 where month(order_date)=1
) as decimal(10,2)) as PCT
from pizza_sales2
where month(order_date)=1
group by pizza_category;



-- % sales by pizza size

Create View sales_by_pizza_size as  
select pizza_size ,cast(sum(total_price)  as decimal(10,2))as Totalsales,cast(sum(total_price) *100/(select sum(total_price) from pizza_sales2 where Datepart(quarter,order_date) =1
) as decimal(10,2)) as PCT
from pizza_sales2
where Datepart(quarter,order_date) =1
group by pizza_size




-- total pizza sold by pizza category

create view Total_Quantity_sold as
select pizza_category,sum(quantity) as total_pizza_sold from pizza_sales2 
group by total_pizza_sold 




--Top 5 pizzas by revenue
create view Top_5_pizzas_by_revenue as
select top 5 pizza_name ,sum(total_price) as total_revenue from pizza_sales2
group by pizza_name
order by total_revenue desc



--Bottom 5 pizzas by revenue
create view Bottom_5_pizzas_by_revenue as
select top 5 pizza_name ,sum(total_price) as total_revenue from pizza_sales2
group by pizza_name
order by total_revenue asc


--Top 5 pizzas by quantity
create view Top_5_pizzas_by_quantity as
select top 5 pizza_name ,sum(quantity) total_quantity from pizza_sales2
group by pizza_name
order by  total_quantity desc


--Bottom 5 pizzas by quantity
create view Bottom_5_pizzas_by_quantity as
select top 5 pizza_name ,sum(quantity) total_quantity from pizza_sales2
group by pizza_name
order by  total_quantity 

--Top 5 pizzas by Total orders
create view Top_5_pizzas_by_Total_orders as
select top 5 pizza_name ,count(distinct order_id) total_orders from pizza_sales2
group by pizza_name
order by  total_orders desc

--bottom 5 pizzas by Total orders
create view Bottom_5_pizzas_by_Total_orders as
select top 5 pizza_name ,count(distinct order_id) total_orders from pizza_sales2
group by pizza_name
order by  total_orders 


