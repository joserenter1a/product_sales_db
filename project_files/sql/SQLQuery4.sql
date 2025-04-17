with sales_data as (
	select
		q1.location,
        CAST(REPLACE(q1.paid_ps_upsell, '%', '') AS FLOAT) / 100 AS q1_2025,
        CAST(REPLACE(q2.paid_ps_upsell, '%', '') AS FLOAT) / 100 AS q1_2024
	from q1_sales q1
	JOIN q1_24 q2 on q1.location = q2.location
)

select 

	location, 
	q1_2025,
	q1_2024,
	 (q1_2025 - q1_2024)/q1_2024 as ps_upsell_growth

from sales_data;