SELECT DISTINCT 
	tkspspf.industry_branch_code,
	tkspspf.industry_name,
	tkspspf2.payroll_year,
	tkspspf2.average_wage,
	tkspspf.payroll_year AS last_year, 
	tkspspf.average_wage AS previous_AVG_wage,
	tkspspf2.average_wage/tkspspf.average_wage AS salary_increase
FROM t_kristyna_stefkova_project_sql_primary_final tkspspf
JOIN t_kristyna_stefkova_project_sql_primary_final tkspspf2 
	ON tkspspf.`payroll_year` = tkspspf2.`payroll_year` - 1
	AND tkspspf.industry_name = tkspspf2.industry_name
WHERE (tkspspf2.average_wage/tkspspf.average_wage) < 1
GROUP BY tkspspf.industry_name, tkspspf.`year`;

