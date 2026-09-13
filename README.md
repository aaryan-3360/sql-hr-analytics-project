# sql-hr-analytics-project
Employee Salary &amp; Attrition Analysis using SQL Window Functions (ROW_NUMBER, RANK, NTILE, AVG OVER) - Real-world HR analytics project 


Key SQL Analysis

1. Rank Employees by Desired Salary Within Each Department

Business Question:
Who are the employees with the highest desired salary in each department?

Query:
"View SQL Query" (queries/1_rank_by_salary.sql)

What it answers:
Ranks employees within each department based on their desired salary using the "ROW_NUMBER()" window function.

Result:
"Salary Rank by Department" (screenshots/01_salary_rank_by_department.png)

---

2. Compare Employee Desired Salary with Department Average

Business Question:
How does each employee's desired salary compare with the average desired salary of their department?

Query:
"View SQL Query" (queries/2_avg_salary_comparison.sql)

What it answers:
Calculates the average desired salary for each department and shows how much each employee's desired salary differs from that department average.

Result:
"Salary vs Department Average" (screenshots/02_salary_vs_department_average.png)

---

3. Identify the Top 10% Earners

Business Question:
Which employees fall within the top 10% based on desired salary across the company?

Query:
"View SQL Query" (queries/3_top_10_percent.sql)

What it answers:
Uses the "NTILE(10)" window function to divide employees into ten salary groups and identifies employees in the highest salary group.

Result:
"Top 10 Percent Earners" (screenshots/03_top_10_percent_earners.png)

---

4. Analyze Attrition Rate by Department and Job Type

Business Question:
Which departments and job types have the highest employee attrition?

Query:
"View SQL Query" (queries/4_attrition_rate.sql)

What it answers:
Calculates the total number of employees, terminated employees, and attrition rate for each department and job function.

Result:
"Attrition Rate Analysis" (screenshots/04_attrition_rate_by_department.png)

---

5. Identify Employees with 5+ Years in the Same Role

Business Question:
Which current employees have been in the same role for five or more years?

Query:
"View SQL Query" (queries/5_long_tenure.sql)

What it answers:
Calculates the number of years employees have been in their current role and identifies employees with at least five years of tenure in that role.

Result:
"Employees 5+ Years" (screenshots/05_employees_5_plus_years.png)

---

6. Categorize Employees into Salary Bands

Business Question:
How are employees distributed across salary-performance bands within each department?

Query:
"View SQL Query" (queries/6_salary_quartiles.sql)

What it answers:
Uses "NTILE(4)" to divide employees within each department into four salary groups and categorizes them as Top 25%, Upper Mid, Lower Mid, and Bottom 25%.

Result:
"Salary Bands" (screenshots/06_salary_bands_by_department.png)