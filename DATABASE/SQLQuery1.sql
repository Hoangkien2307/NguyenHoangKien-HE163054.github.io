
-- lay thong tin Employee, cham cong
Select e.Employee_id,e.Employee_Name,p.Name,e.base_Salary,e.isurance_money,(e.base_Salary / 26) as luong_ngaycong ,
COUNT(e.Employee_id) as so_ngay_cong
from Employee e join Position p on e.pID = p.pID 
left join Working_time w on w.Employee_id = e.Employee_id 
where 
MONTH(w.work_date) = 11 and YEAR(w.work_date) = 2020 
group by e.Employee_id,e.Employee_Name,p.Name,e.base_Salary,(e.base_Salary / 26),e.isurance_money

-- lay thong tin phu cap Employee

Select e.Employee_id,ea.Allow_id,a.name,ea.amount from Employee e join Employee_Allowance ea on e.Employee_id = ea.Employee_id
join Allowance a on ea.Allow_id = a.id where ea.month = 11 and ea.year = 2020

-- lay so gio tien luong them gio

Select e.Employee_id,e.Employee_Name,SUM(ov.Hour) as total,(e.base_Salary / 26) * SUM(ov.Hour) * 1.5 / 8 from Employee e left join over_EMP oe on e.Employee_id = oe.Employee_id
left join Overtime ov on oe.overtime_id = ov.overtime_id 
where isCheck is null or isCheck = 'true'
group by e.Employee_id,e.Employee_Name,e.base_Salary

-- lay bao hiem co dang ki
Select e.Employee_id,i.id,i.name,i.[percent] from Employee e join Emp_Insurance ei on e.Employee_id = ei.Employee_id
 join Insurance i on ei.ins_id = i.id 


-- lay thong tin bang cham cong trong thang nao
Select e.Employee_id,work_date from Employee e join Working_time w on e.Employee_id = w.Employee_id
where Month(work_date) = 11 and YEAR(work_date) = 2020

-- lay thong tin lam them gio
Select e.Employee_id,o.overtime_id,o.date,o.Hour from Employee e left join over_EMP ov on e.Employee_id = ov.Employee_id
left join Overtime o on ov.overtime_id = o.overtime_id
where Month(o.date) = 11 and YEAR(o.date) = 2020 and isCheck = 1

