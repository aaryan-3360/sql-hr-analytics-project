-- Average Salary per department and each employee compare to their department average
select 
e.empid,
e.FirstName,
e.LastName,
e.DepartmentType,
round(avg(r.`Desired Salary`) over(partition by e.DepartmentType),2) as avg_department_salary,
round(r.`Desired Salary` - avg(r.`Desired Salary`) over(partition by e.DepartmentType),2) as  diff_from_avg
from employee as e
join recruitment as r
on e.empid= r.`Applicant ID`
order by e.DepartmentType,r.`Desired Salary` Desc;
;
