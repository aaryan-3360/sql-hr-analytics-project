-- Employees 5+ Years with same role

select * 
from 
(
select e.empid,e.FirstName,e.LastName,e.DepartmentType,e.JobFunctionDescription,e.StartDate,
TIMESTAMPDIFF(YEAR, STR_TO_DATE(e.StartDate,'%d-%b-%y'), CURDATE()) as Years_In_Same_Role
from employee as e
where ExitDate = ""
order by  Years_In_Same_Role desc
)as t 
where Years_In_Same_Role >=5;


