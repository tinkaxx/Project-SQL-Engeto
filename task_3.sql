CREATE TABLE t_kristyna_stefkova_project_task_3 AS 
SELECT DISTINCT 
	tkspspf.category_code,
	tkspspf.food_name,
	tkspspf.`YEAR` AS last_year,
	tkspspf.average_price AS previous_AVG_price,
	tkspspf2.`year`,
	tkspspf2.average_price,
	round((((tkspspf2.average_price - tkspspf.average_price)/tkspspf.average_price )*100),2) AS percentage_interannual_growth
FROM t_kristyna_stefkova_project_sql_primary_final tkspspf 
JOIN t_kristyna_stefkova_project_sql_primary_final tkspspf2 
	ON tkspspf.`year` = tkspspf2.`year` - 1
	AND tkspspf.category_code = tkspspf2.category_code 
GROUP BY tkspspf.category_code, tkspspf. `year`
ORDER BY percentage_interannual_growth;