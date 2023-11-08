SELECT c.country , c.continent, e.year, e.population, e.gini,
    round( e.GDP / 1000000, 2 ) as GDP_mil_dollars 
FROM countries c 
JOIN economies e 
    on c.country = e.country 
WHERE continent = "Europe" AND YEAR > 2005 AND YEAR < 2019;


