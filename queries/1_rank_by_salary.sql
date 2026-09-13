
-- rank by desired salary per department
select e.empid,e.FirstName,e.LastName,
r.`Desired Salary`,
e.DepartmentType,
row_number() over(partition by e.DepartmentType order by r.`Desired Salary` desc) as Salary_rank
from employee as e
join recruitment as r
on e.empid = r.`Applicant ID`;


