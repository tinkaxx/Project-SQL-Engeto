CREATE TABLE t_Kristyna_Stefkova_project_sql_average_price AS
SELECT
	cp.category_code,
	cpc.name AS food_name,
	YEAR (date_from) AS YEAR,
	round(avg(value),1) AS average_price
FROM czechia_price cp
JOIN czechia_price_category cpc 
	ON cp.category_code = cpc.code
GROUP BY category_code, YEAR
ORDER BY YEAR DESC;

CREATE TABLE t_Kristyna_Stefkova_project_sql_average_wage AS
SELECT 
	cp.industry_branch_code,
	cpib.name AS industry_name,
	cp.payroll_year,
	round(avg(value),1) AS average_wage
FROM czechia_payroll cp
JOIN czechia_payroll_industry_branch cpib 
	ON cpib.code = cp.industry_branch_code 
WHERE value_type_code = 5958 AND unit_code = 200 AND calculation_code = 100
GROUP BY industry_branch_code, payroll_year ;

CREATE TABLE t_Kristyna_Stefkova_project_sql_primary_final AS
SELECT *
FROM t_kristyna_stefkova_project_sql_average_price tkspsap 
JOIN t_kristyna_stefkova_project_sql_average_wage tkspsaw 
	ON tkspsap.YEAR = tkspsaw.payroll_year; 

SELECT DISTINCT 
	tkspspf.industry_branch_code,
	tkspspf.industry_name,
	tkspspf2.payroll_year,
	tkspspf2.average_wage,
	tkspspf.payroll_year AS last_year, 
	tkspspf.average_wage AS previous_AVG_wage,
	tkspspf2.average_wage - tkspspf.average_wage AS salary_increase
FROM t_kristyna_stefkova_project_sql_primary_final tkspspf
JOIN t_kristyna_stefkova_project_sql_primary_final tkspspf2 
	ON tkspspf.`payroll_year` = tkspspf2.`payroll_year` - 1
	AND tkspspf.industry_name = tkspspf2.industry_name
GROUP BY tkspspf.industry_name, tkspspf.`year`;

