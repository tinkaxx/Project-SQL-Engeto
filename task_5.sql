SELECT 
	tkspssf.country,
	tkspssf.`year` AS last_year,
	tkspssf.GDP_mil_dollars AS previous_GDP_mil_dollars,
	tkspssf2.`year` AS `year`,
	tkspssf2.GDP_mil_dollars,
    round(((tkspssf2.GDP_mil_dollars-tkspssf.GDP_mil_dollars)/tkspssf.GDP_mil_dollars*100),2) AS GDP__percentage_difference
FROM t_kristyna_stefkova_project_sql_secondary_final tkspssf 
JOIN t_kristyna_stefkova_project_sql_secondary_final tkspssf2 
	ON tkspssf .`year` = tkspssf2 .`year` - 1 
	AND tkspssf.country = tkspssf2.country 
WHERE tkspssf.country = "Czech Republic";


SELECT 
	tkspssf.country,
	tkspssf.`year` AS last_year,
	tkspssf.GDP_mil_dollars AS previous_GDP_mil_dollars,
	tkspssf2.`year` AS `year`,
	tkspssf2.GDP_mil_dollars,
    round(((tkspssf2.GDP_mil_dollars-tkspssf.GDP_mil_dollars)/tkspssf.GDP_mil_dollars*100),2) AS GDP__percentage_difference,
    tkspt.percentage_interannual_growth 
FROM t_kristyna_stefkova_project_sql_secondary_final tkspssf 
JOIN t_kristyna_stefkova_project_sql_secondary_final tkspssf2 
	ON tkspssf .`year` = tkspssf2 .`year` - 1 
	AND tkspssf.country = tkspssf2.country  
WHERE tkspssf.country = "Czech Republic"
GROUP BY `year` ;

SELECT 
	tkspssf.country,
	tkspssf.`year` AS last_year,
	tkspssf.GDP_mil_dollars AS previous_GDP_mil_dollars,
	tkspssf2.`year` AS `year`,
	tkspssf2.GDP_mil_dollars,
    round(((tkspssf2.GDP_mil_dollars-tkspssf.GDP_mil_dollars)/tkspssf.GDP_mil_dollars*100),2) AS GDP__percentage_difference,
    round(avg(average_price),2)
FROM t_kristyna_stefkova_project_sql_secondary_final tkspssf 
JOIN t_kristyna_stefkova_project_sql_secondary_final tkspssf2 
	ON tkspssf .`year` = tkspssf2 .`year` - 1 
	AND tkspssf.country = tkspssf2.country
JOIN t_kristyna_stefkova_project_sql_average_price tkspsap 
	ON tkspsap.`YEAR` - 1 = tkspssf.`year` 
WHERE tkspssf.country = "Czech Republic"
GROUP BY `YEAR` ;

SELECT 
	`YEAR` ,
	 round(avg(average_price),2)
FROM t_kristyna_stefkova_project_sql_average_price tkspsap 
GROUP BY `YEAR` 