-- Attrition Rate by Department and job type 
select e.DepartmentType, e.JobFunctionDescription , 
count(*) as total_employee,
sum(case when e.EmployeeStatus = 'Voluntarily Terminated' then 1
when e.EmployeeStatus = 'Terminated for Cause' then 1
else 0 end ) as terminated_employee,
round(100.0 * sum(case when e.EmployeeStatus = 'Voluntarily Terminated' then 1
when e.EmployeeStatus = 'Terminated for Cause' then 1
else 0 end )/count(*),2) as attrition_rate
from employee as e
group by  e.DepartmentType, e.JobFunctionDescription
order by  e.DepartmentType, attrition_rate desc;


