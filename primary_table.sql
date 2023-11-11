CREATE TABLE t_Kristyna_Stefkova_project_sql_primary_final AS

SELECT
	cp.category_code,
	cpc.name,
	YEAR (date_from) AS YEAR,
	round(avg(value),1) AS average_value
FROM czechia_price cp
JOIN czechia_price_category cpc 
	ON cp.category_code = cpc.code
JOIN czechia_payroll cp2 
GROUP BY category_code, YEAR
ORDER BY YEAR DESC;

SELECT 
	cp.industry_branch_code,
	cpib.name,
	cp.payroll_year,
	round(avg(value),1) AS average_wage
FROM czechia_payroll cp
JOIN czechia_payroll_industry_branch cpib 
	ON cpib.code = cp.industry_branch_code 
WHERE value_type_code = 5958 AND unit_code = 200 AND calculation_code = 100
GROUP BY industry_branch_code, payroll_year ;
