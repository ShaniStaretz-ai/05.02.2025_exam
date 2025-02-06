-- question 2:GROUP by questions
--a.
select m.genre,count(*) from movies m
GROUP by m.genre;
--b. 
select m.year,sum(m.revenue) from movies m
group by year;
--c.
select m.genre,avg(m.revenue) from movies m
group by m.genre;
--d.
select m.genre,m.language,avg(m.revenue) from movies m
group by m.genre,m.language;
--e.
SELECT count(*),language from movies m
GROUP by m.language
ORDER by count(*),m.language DESC
limit 1;

--f. 
SELECT count(*), m.country from movies m
GROUP by m.language
ORDER by count(*) DESC
LIMIT 1;

--g.
SELECT m.genre from movies m
GROUP by m.genre
having count(*) >2;

--h. 
SELECT sum(m.revenue) as total_revenue,m.year from movies m
GROUP by m.year
HAVING sum(m.revenue)>1000;

--i.
SELECT m.language from movies m
GROUP by m.language
HAVING count(*)>=3