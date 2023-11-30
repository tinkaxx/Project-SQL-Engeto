# Project-SQL-Engeto
Jedná se o SQL projekt, který zpracovávám do Datové akademie v Engeto.

# Zadání projektu

Mým úkolem je odpovědět na výzkumné otázky týkající se porovnání dostupnosti základních potravin na základě průměrných příjmů za časové období 2006-2018 . Než se pustím do tohoto úkolu, je třeba vypracovat datové podklady, ze kterých budu vycházet při hledání odpovědí na dané otázky. 
K dispozici mám tabulky poskytující informace o mzdách v různých odvětvích za určité období a také informace o cenách vybraných potravin, dále různé číselníky, které mi pomohou rozklíčovat určité údaje v tabulkách. Dále je možné při zpracování projektu využít informace o zemích na světě, a také o jejich ekonomice. 

# Datové podklady

Abych mohla odpovědět na výzkumné otázky, které je možné najít v dalším bodě, je třeba vytvořit primární tabulku, která obsahuje data cen potravin a mezd pro Českou republiku za časové období 2006-2018. Já jsem si nejříve vytvořila jednu pomocnou tabulku s průměrnými cenami a druhou s průměrnými mzdami, které jsem následně spojila do tabulky výsledné (primární). 
Sekundární tabulka měla obsahovat data o evropských státech, jako populace, gini koeficient a HDP. U vytváření sekundární tabulky jsem narazila na problém, že u položky gini koeficient chyběly některé hodnoty. Ale protože s tímto ukazatelem jsem dále nepracovala, nechala jsem to být.

# Výzkumné otázky

## 1. otázka: Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?

V některých odvětvích mzdy klesaly, největší meziroční pokles byl v roce 2013 v Peněžnictví a pojišťovnictví (-9 %). Mzdy klesaly také v dalších odvětvích. Pokles -4,36 % byl zaznamenám v roce 2009 v Těžbě a dobývání a pokles -4,29 % ve Výrobě a rozvodu elektřiny v roce 2013. Další pokles mezd je patrný z tabulky t_kristyna_stefkova_project_task_1.  

## 2. otázka: Kolik je  možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd? 

První srovnatelné období je rok 2006. V tomto roce je průměrná (hrubá) mzda 20 342 Kč a průměrná cena chleba je 16,1 Kč/kg (je tedy možné si koupit 1263,48 kg chleba). Průměrná cena mléka je 14,4 Kč/l (koupit si lze v roce 2006 1412,63 litrů mléka). Poslední srovnatelné období je rok 2018 a průměrná mzda byla v tomto roce 31 980 Kč. Při průměrné ceně chleba 24,2 Kč/kg je možné si koupit 1321,49 kg a při průměrné ceně mléka 19,8 kč/l je to 1615,15 litrů.

## 3. otázka: Která kategorie potravin zdražuje nejpomaleji?

Z tabulky t_kristyna_stefkova_project_task_3 jsem ve sloupci meziroční procentuální růst zjistila, že všechny průměrné ceny nerostou, ale také klesají. Největší pokles jsem zaznamenala u položky Rajská jablka, a to v roce 2007, kdy tento pokles činil -30,28 %.  Pokud bych hledala hodnotu, která roste nejpomaleji, tak je to položka Pomeranče v roce 2016, kdy byl růst 0,31 %.

## 4. otázka: Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?

Růst větší než 10 % jsem nenašla. Nejvyšší nárůst byl v roce 2013, v tomto roce byl meziroční nárůst cen potravin o 6,69 % vyšší než růst mezd.

## 5. otázka: Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud vzroste HDP výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem? 

Nelze říci, že by to platilo v každém roce. Zmínila bych rok 2007, kdy HDP meziročně vzrostlo o 5,57 %, zároveň vzrostly také ceny potravin o 6,77 % a mzdy o 6,79 %, ceny potravin a mzdy rostly i v roce následujícím. Oproti tomu v roce 2012 došlo k poklesu HDP o 0,79 %, ale ceny potravin i mzdy naopak rostly, zde tedy tvrzení o vlivu HDP na ceny potravin a mzdy neplatí. Na základě tabulky t_kristyna_stefkova_project_task_5 tedy nelze dojít k závěru, že růst HDP má vliv na růst cen potravin a mezd v tom samém roce, nebo v roce následujícím. Našla jsem rok, v kterém toto tvrzení platilo, ale zároveň jsou i roky, v kterém toto neplatí. 




