with cte as(
select

a.Product,
a.Category,
a.Brand,
a.Description,
a.sale_price,
a.cost_price,
a.image_url,
b.date,
b.Customer_Type,
b.discount_band,
b.units_sold,
(sale_price * Units_Sold) as revenue,
(cost_price*Units_Sold) as total_cost,
format(date,'MMM') as month,
format(date,'yyyy') as year
from Product_data a
join product_sales b
on a.Product_ID = b.Product)


select 
*,
1-discount*1.0/100
from cte a
join discount_data b
on a.discount_band = b.discount_band and a.month = b.month
