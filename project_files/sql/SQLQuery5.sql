with sales_data as (
	select
		q1.location,
		q1.ps_upsell_revenue AS q1_2025,
		q2.ps_upsell_revenue AS q1_2024
	from q1_sales q1
	JOIN q1_24 q2 on q1.location = q2.location
)

select 

	location, 
	q1_2025,
	q1_2024,
	 (q1_2025 - q1_2024)/q1_2024 * 100 as ps_revenue_growth

from sales_data where location = 'Portland';