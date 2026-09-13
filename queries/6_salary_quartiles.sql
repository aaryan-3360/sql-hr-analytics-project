
select *,
case 
when rnk=1 then 'Top 25%'
when rnk=2 then 'upper mid'
when rnk=3 then 'lower mid'
else  'bottom 25%'
end as Salary_Band
from
(
select e.empid,e.FirstName,e.LastName,e.DepartmentType,r.`Desired Salary`,
ntile(4) over( partition by DepartmentType order by r.`Desired Salary` desc) as rnk
from  employee as e
inner join recruitment as r
on e.empid = r.`Applicant ID`
) as t
order by DepartmentType, rnk asc;
