SELECT	
	cpib.name AS name_of_industry,
	cpay.value AS payroll_value,
	cpay.payroll_year,
	cpc.name AS name_of_food,
	cp.value AS food_value,
	YEAR (cp.date_from) AS year_of_entry
FROM czechia_price cp
JOIN czechia_payroll cpay
	ON cpay.payroll_year = YEAR(cp.date_from)
JOIN czechia_price_category cpc
	ON cp.category_code = cpc.code
JOIN czechia_payroll_industry_branch cpib
	ON cpay.industry_branch_code = cpib.code
WHERE cpay.value_type_code = 5958;