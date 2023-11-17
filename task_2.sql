
SELECT *
FROM t_kristyna_stefkova_project_sql_primary_final tkspspf 
WHERE food_name IN ('Mléko polotučné pasterované','Chléb konzumní kmínový')
AND `YEAR`  IN ('2006', '2018')
;

CREATE TABLE t_kristyna_stefkova_project_task_2 AS 
SELECT 
	   food_name,
	   `YEAR`, 
	   round(avg(average_wage),2) AS AVG_wage,
	   avg(average_price) AS AVG_price
FROM t_kristyna_stefkova_project_sql_primary_final tkspspf 
WHERE food_name IN ('Mléko polotučné pasterované','Chléb konzumní kmínový')
AND `YEAR`  IN ('2006', '2018')
GROUP BY payroll_year, food_name  ;

