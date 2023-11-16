SELECT *
FROM t_kristyna_stefkova_project_sql_primary_final tkspspf 
WHERE food_name IN ('%mléko%','%chléb%');

SELECT *
FROM t_kristyna_stefkova_project_sql_primary_final tkspspf 
WHERE food_name IN ('Mléko polotučné pasterované','Chléb konzumní kmínový')
AND `YEAR`  IN ('2006', '2018')
;

SELECT *,
	   avg(average_wage)
FROM t_kristyna_stefkova_project_sql_primary_final tkspspf 
WHERE food_name IN ('Mléko polotučné pasterované','Chléb konzumní kmínový')
AND `YEAR`  IN ('2006', '2018')
GROUP BY payroll_year  ;

SELECT *,
	   avg(average_price)
FROM t_kristyna_stefkova_project_sql_primary_final tkspspf 
WHERE food_name IN ('Mléko polotučné pasterované','Chléb konzumní kmínový')
AND `YEAR`  IN ('2006', '2018')
GROUP BY  category_code  ;