--Datensatz erkunden
Select * from layoffs

-- Top 5 der von Entlassungen betroffenen Länder
select top (5) country , sum(total_laid_off) as Layoff_Count 
from layoffs
group by country
order by Layoff_Count desc

-- Die fünf Branchen, in denen am meisten Entlassungen vorgenommen werden
select top (5) industry , sum(total_laid_off) as Layoff_Count 
from layoffs
group by industry
order by Layoff_Count desc

-- Die fünf am stärksten von Entlassungen betroffenen Bereiche
select top (5) location , sum(total_laid_off) as Layoff_Count 
from layoffs
group by location
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs in year 2023
select industry, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by industry
order by Layoff_count desc

-- Branchen mit den meisten Entlassungen im Jahr 2022
select industry, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by industry
order by Layoff_count desc

-- Branchen mit den meisten Entlassungen im Jahr 2021
select industry, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by industry
order by Layoff_count desc

-- Jahre mit den meisten Entlassungen
select YEAR(date) as Year, sum(total_laid_off) as Layoff_count
from layoffs
group by year(date)
order by Year(date) desc

--Top 5 Unternehmen mit den meisten Entlassungen
select top (5) company , sum(total_laid_off) as Layoff_Count 
from layoffs
group by company
order by Layoff_Count desc

--Unternehmen mit den meisten Entlassungen im Jahr 2023
select company, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by company
order by Layoff_count desc

-- Unternehmen mit den meisten Entlassungen im Jahr 2022
select company, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by company
order by Layoff_count desc

-- Unternehmen mit den meisten Entlassungen im Jahr 2021
select company, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by company
order by Layoff_count desc

-- Unternehmen mit den meisten Entlassungen im Jahr 2020
select company, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2020-01-01 00:00:00.000' and '2020-12-31 00:00:00.000'
group by company
order by Layoff_count desc

-- Branchen mit den meisten Entlassungen in den Vereinigten Staaten
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States'
group by industry
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen (außer den USA)
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country!='United States'
group by industry
order by Layoff_Count desc

-- Standorte mit den meisten Entlassungen (außer den USA)
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='United States'
group by location
order by Layoff_Count desc

-- Standorte mit den meisten Entlassungen in den Vereinigten Staaten
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States'
group by location
order by Layoff_Count desc

-- Standorte mit den meisten Entlassungen in den Vereinigten Staaten im Jahr 2023
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States' and date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Standorte mit den meisten Entlassungen in den Vereinigten Staaten im Jahr 2022
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States' and date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Standorte mit den meisten Entlassungen in den Vereinigten Staaten im Jahr 2021
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States' and date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Standorte mit den meisten Entlassungen in den Vereinigten Staaten im Jahr 2020
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States' and date between '2020-01-01 00:00:00.000' and '2020-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

--Standorte mit den meisten Entlassungen (außer den USA) im Jahr 2023
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='United States' and date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Standorte mit den meisten Entlassungen (außer den USA) im Jahr 2022
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='United States' and date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Standorte mit den meisten Entlassungen (außer den USA) im Jahr 2021
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='United States' and date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Standorte mit den meisten Entlassungen (außer den USA) im Jahr 2020
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='United States' and date between '2020-01-01 00:00:00.000' and '2020-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen in Indien
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India'
group by industry
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen in Indien im Jahr 2023
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India' and date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen in Indien im Jahr 2022
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India' and date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen in Indien im Jahr 2021
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India' and date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen in Indien im Jahr 2020
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India' and date between '2020-01-01 00:00:00.000' and '2020-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen (außer Indien und den USA)
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States'
group by industry
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen (außer Indien und den Vereinigten Staaten) im Jahr 2020
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States' and date between '2020-01-01 00:00:00.000' and '2020-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen (außer Indien und den Vereinigten Staaten) im Jahr 2021
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States' and date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen (außer Indien und den Vereinigten Staaten) im Jahr 2022
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States' and date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Branchen mit den meisten Entlassungen (außer Indien und den Vereinigten Staaten) im Jahr 2023
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States' and date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Unternehmen mit der höchsten Zahl entlassener Mitarbeiter
select company, country, percentage_laid_off
from layoffs
order by percentage_laid_off desc

-- In welchem ​​Stadium die meisten Mitarbeiter entlassen wurden
select stage, sum (total_laid_off) as Layoff_count
from layoffs
group by stage
order by layoff_count desc

-- In welchem ​​Stadium wurden in den Vereinigten Staaten die meisten Mitarbeiter entlassen?
select stage, sum (total_laid_off) as Layoff_count
from layoffs
where country = 'United States'
group by stage
order by layoff_count desc

-- In welchem ​​Stadium wurden in Indien die meisten Mitarbeiter entlassen?
select stage, sum (total_laid_off) as Layoff_count
from layoffs
where country = 'India'
group by stage
order by layoff_count desc

-- In welchem ​​Stadium wurden die meisten Mitarbeiter (mit Ausnahme von Indien und den Vereinigten Staaten) entlassen?
select stage, sum (total_laid_off) as Layoff_count
from layoffs
where country != 'India' and country = 'United States'
group by stage
order by layoff_count desc