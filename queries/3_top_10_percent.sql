
-- Top 10% earners company wide 

select * 
from
(select e.empid,r.`Applicant ID`,e.FirstName,e.LastName,r.`Desired Salary`,
ntile(10) over(order by r.`Desired Salary` desc) as top_earners
from employee as e
join recruitment as r
on e.empid = r.`Applicant ID`
) as t
where top_earners = 1;
