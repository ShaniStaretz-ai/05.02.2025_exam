--a. 
SELECT *,c.country_name  from tourists t
inner join countries c
on c.id=t.country_id;

--b . 
SELECT * from tourists ts
INNER JOIN tours t
on ts.tour_id=t.id;

--c. 
SELECT * from tourists ts
left JOIN tours t
on ts.tour_id=t.id;

--d.
SELECT * from tourists ts
FULL JOIN tours t
on ts.tour_id=t.id;

--e.1 
SELECT * from tourists ts
where ts.tour_id is null;


--e.2.
-- DELETE FROM tourists 
-- where id =(select t.id as t_id from tourists t where t.tour_id is null limit 1);

-- f.1.
select * from tours t where t.id not in (
SELECT ts.tour_id from tourists ts
where ts.tour_id is not null)

-- f.2
update tours  set end_date=date(end_date,'+1 year')
where id=(SELECT t.id from tours t where t.id not in (
SELECT ts.tour_id from tourists ts
where ts.tour_id is not null))

--g.
SELECT count(*) from (SELECT t.id from tours t where t.id not in (
SELECT ts.tour_id from tourists ts
where ts.tour_id is not null))

--h. 
SELECT * from tourists
CROSS JOIN tours
