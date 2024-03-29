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
    round(avg(average_price),2) AS average_price_1 
FROM t_kristyna_stefkova_project_sql_secondary_final tkspssf 
JOIN t_kristyna_stefkova_project_sql_secondary_final tkspssf2 
	ON tkspssf .`year` = tkspssf2 .`year` - 1 
	AND tkspssf.country = tkspssf2.country
JOIN t_kristyna_stefkova_project_sql_average_price tkspsap 
	ON tkspsap.`YEAR` = tkspssf2.`year` 
WHERE tkspssf.country = "Czech Republic"
GROUP BY `YEAR` ;


CREATE TABLE t_kristyna_stefkova_project_task_5 AS 
SELECT 
	tkspssf2.`year` AS `year`,
	tkspssf2.GDP_mil_dollars,
	tkspssf.GDP_mil_dollars AS previous_GDP_mil_dollars,
    round(((tkspssf2.GDP_mil_dollars-tkspssf.GDP_mil_dollars)/tkspssf.GDP_mil_dollars*100),2) AS percentage_GDP_difference,
    round(avg(average_price),2) AS average_price,
    round(AVG(previous_AVG_price),2) AS previous_AVG_price,
    round(((round(avg(average_price),2) - round(AVG(previous_AVG_price),2))/round(AVG(previous_AVG_price),2)*100),2) AS percentage_price_difference,
    round(avg(average_wage),2) AS average_wage,
    round(avg(previous_AVG_wage),2) AS previous_AVG_wage,
    round(((round(avg(average_wage) - round(avg(previous_AVG_wage),2)))/round(avg(previous_AVG_wage),2)*100),2) AS percentage_wage_difference
FROM t_kristyna_stefkova_project_sql_secondary_final tkspssf 
JOIN t_kristyna_stefkova_project_sql_secondary_final tkspssf2 
	ON tkspssf .`year` = tkspssf2 .`year` - 1 
	AND tkspssf.country = tkspssf2.country
JOIN t_kristyna_stefkova_project_task_3 tkspt 
	ON tkspt.`year` = tkspssf2.`year` 
JOIN t_kristyna_stefkova_project_task_1 tkspt2 
	ON tkspt2.payroll_year = tkspssf2.`year` 
WHERE tkspssf.country = "Czech Republic"
GROUP BY `YEAR` ;
