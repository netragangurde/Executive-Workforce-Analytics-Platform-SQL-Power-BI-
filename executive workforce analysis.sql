CREATE DATABASE Workforce_Analytics_DB;
USE Workforce_Analytics_DB;

select *
from hr_analytics
LIMIT 10;

select count(*) as Total_Employees
from hr_analytics;

describe hr_analytics;

select *
from hr_analytics
LIMIT 5;

select ï»¿EmpID,
count(*) as dupliacte_count
from hr_analytics
group by ï»¿EmpID
having count(*)>1;

alter table hr_analytics
change column ï»¿EmpID EmpID text;

select EmpID,
count(*) as duplicate_count
from hr_analytics
group by EmpID
having count(*)>1;

SELECT 
COUNT(*) AS Duplicate_Records
FROM
(
SELECT EmpID,
COUNT(*) 
FROM hr_analytics
GROUP BY EmpID
HAVING COUNT(*) > 1
) AS duplicate_table;

select
sum(case when EmpID is null then 1 else 0 end) as missing_EmpID,
sum(case when Age is null then 1 else 0 end) as missing_Age,
sum(case when Department is null then 1 else 0 end) as missing_Department,
sum(case when Attrition is null then 1 else 0 end) as missing_Attrition
from hr_analytics;

select 
count(distinct EmpID) as total_employees
from hr_analytics;