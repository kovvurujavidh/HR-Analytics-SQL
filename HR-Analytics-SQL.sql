CREATE DATABASE hr_analytics;
USE hr_analytics;
SELECT COUNT(*) AS Total_Employees
FROM employees;

SELECT Department, COUNT(*) AS Total_Employees
FROM employees
GROUP BY Department;

SELECT Attrition, COUNT(*) AS Employees
FROM employees
GROUP BY Attrition;

SELECT 
ROUND(
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
2
) AS Attrition_Rate
FROM employees;

SELECT Department , Avg(MonthlyIncome)
FROM employees group by Department;

SELECT EmployeeNumber , MonthlyIncome
FROM employees order by MonthlyIncome desc limit 5;

SELECT EmployeeNumber, MonthlyIncome
FROM employees
WHERE MonthlyIncome >
(
    SELECT AVG(MonthlyIncome)
    FROM employees
);

SELECT EmployeeNumber, MonthlyIncome
FROM employees order by MonthlyIncome desc Limit 1;

SELECT MAX(MonthlyIncome) AS Highest_Salary
FROM employees;

SELECT min(MonthlyIncome) AS Lowest_Salary
FROM employees;

SELECT JobRole, avg(MonthlyIncome) AS Avg_Monthly_Income
FROM employees
GROUP BY JobRole; 

select EmployeeNumber , YearsAtCompany from employees
where YearsAtCompany > 10 ;

SELECT Department , EmployeeNumber , MonthlyIncome
FROM employees
Where Department = 'Sales' and MonthlyIncome > 5000; 

SELECT Department , EmployeeNumber
FROM employees
Where Department = 'Human Resources' or Department = 'Sales' ; 
      '' same as upper one ''
SELECT Department, EmployeeNumber
FROM employees
WHERE Department IN ('Human Resources', 'Sales');

SELECT JobRole , EmployeeNumber
FROM employees
Where JobRole = 'Sales Executive' and YearsAtCompany > 5 ; 


SELECT  EmployeeNumber , MonthlyIncome
FROM employees
Where MonthlyIncome > 5000 and MonthlyIncome < 10000 ; 


SELECT EmployeeNumber, MonthlyIncome
FROM employees
WHERE MonthlyIncome BETWEEN 5000 AND 10000;


SELECT JobRole, EmployeeNumber 
FROM employees
where JobRole != 'Sales Executive'; 

SELECT Department, EmployeeNumber 
FROM employees
where Department != 'Sales'; 


SELECT EmployeeNumber,
       Department,
       JobRole,
       OverTime
FROM employees
WHERE OverTime = 'Yes';

SELECT COUNT(*) AS Overtime_Employees
FROM employees
WHERE OverTime = 'Yes';

SELECT AVG(MonthlyIncome) AS Avg_Overtime_Income
FROM employees
WHERE OverTime = 'Yes';

SELECT  MAX(MonthlyIncome) AS Higest_monthly_income
FROM employees
WHERE OverTime = 'Yes';

SELECT Department,
       AVG(YearsAtCompany) AS Avg_Years_At_Company
FROM employees
GROUP BY Department;

SELECT Department,
       AVG(YearsAtCompany) AS Avg_Years_At_Company
FROM employees
GROUP BY Department ,  AVG(YearsAtCompany) desc  ; 


SELECT Department,
       AVG(YearsAtCompany) AS Avg_Years
FROM employees
GROUP BY Department
ORDER BY Avg_Years DESC
LIMIT 1;

SELECT EmployeeNumber, MonthlyIncome
FROM employees
WHERE MonthlyIncome > 10000;

SELECT Gender,
       AVG(MonthlyIncome) AS Avg_Salary
FROM employees
GROUP BY Gender;

SELECT MaritalStatus,
       COUNT(*) AS Total_Employees
FROM employees
GROUP BY MaritalStatus;

SELECT EmployeeNumber,
       YearsAtCompany,
       OverTime
FROM employees
WHERE YearsAtCompany > 5
  AND OverTime = 'Yes';
  
  SELECT AVG(MonthlyIncome) AS Avg_Salary
FROM employees
WHERE Attrition = 'Yes';
