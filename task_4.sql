CREATE TABLE t_kristyna_stefkova_project_task_4 AS  
SELECT DISTINCT 
	tkspt.payroll_year,
	round(avg(tkspt.percentage_salary_increase),2) AS AVG_percentage_salary_increase,
	tkspt2.`year`,
	round(avg(tkspt2.percentage_interannual_growth),2) AS AVG_percentage_price_growth,
	round((avg(tkspt2.percentage_interannual_growth) - avg(tkspt.percentage_salary_increase)),2) AS price_salary_difference
FROM t_kristyna_stefkova_project_task_1 tkspt
JOIN t_kristyna_stefkova_project_task_3 tkspt2 
	ON tkspt.payroll_year = tkspt2.`year`
	AND tkspt.last_year = tkspt2.last_year
GROUP BY payroll_year 
ORDER BY price_salary_difference
;

