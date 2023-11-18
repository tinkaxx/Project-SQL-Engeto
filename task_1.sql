CREATE TABLE t_kristyna_stefkova_project_task_1 AS
SELECT DISTINCT 
	tkspspf.industry_branch_code,
	tkspspf.industry_name,
	tkspspf2.payroll_year,
	tkspspf2.average_wage,
	tkspspf.payroll_year AS last_year, 
	tkspspf.average_wage AS previous_AVG_wage,
	round(((tkspspf2.average_wage-tkspspf.average_wage)/tkspspf.average_wage*100),2) AS percentage_salary_increase
FROM t_kristyna_stefkova_project_sql_primary_final tkspspf
JOIN t_kristyna_stefkova_project_sql_primary_final tkspspf2 
	ON tkspspf.`payroll_year` = tkspspf2.`payroll_year` - 1
	AND tkspspf.industry_name = tkspspf2.industry_name
GROUP BY tkspspf.industry_name, tkspspf.`year`
ORDER BY percentage_salary_increase;

