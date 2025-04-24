with t as (
	select
	tp.Employee,	
	tp.pct_upsell,	
	tp.avg_rate,	
	tp.upsell_days,
	tp.tot_rev
	from top_performers tp

)
select * from t;