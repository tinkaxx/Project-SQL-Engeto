CREATE TABLE t_Kristyna_Stefkova_project_sql_primary_final AS
SELECT
	cp.category_code,
	cpc.name,
	YEAR (date_from) AS YEAR,
	round(avg(value),1) AS average_value
FROM czechia_price cp
JOIN czechia_price_category cpc 
	ON cp.category_code = cpc.code
GROUP BY category_code, YEAR
ORDER BY YEAR DESC;