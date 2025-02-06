create or replace function get_revenue_by_year( 
	year_in INTEGER,
	out sum_revenue double precision)
	language plpgsql as
	$$
		BEGIN
				select sum(revenue)
				into sum_revenue::numeric(6, 2)
				from movies
				where year=year_in
				group by year;
		END;
	$$;
select * from get_revenue_by_year(2019);