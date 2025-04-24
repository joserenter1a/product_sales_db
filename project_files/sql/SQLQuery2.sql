with p as (
	select
	pg.location,
	pg.pct_upsell_growth,
	pg.pct_to_goal,
	pg.ps_upsell_rev,
	pg.revenue_goal,
	pg.ps_upsell_rev_pymo,
	pg.ps_upsell_rev_growth,
	pg.ps_rev_per_unit,
	pg.per_unit_rank,
	pg.ps_upsell_rank,
	pg.ps_rate_rank,
	pg.pct_upsell_rank,
	pg.avg_rank,
	pg.area_of_op_name
	from growth pg
)
select * from p;