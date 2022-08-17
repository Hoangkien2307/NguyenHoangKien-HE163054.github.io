-- Lấy ra toàn bộ  thông tin về ca làm việc, thông tin chức vụ giờ checkin check out của nhân viên

Select e.Employee_id,Employee_Name,p.Name as position,ws.time_checkin,ws.time_checkout,w.name as work_shift from Employee e inner join Position p on e.pID = p.pID
left join Working_time ws on e.Employee_id = ws.Employee_id Left join Work_Shift w on ws.cID = w.cID


-- Lấy ra thông tin để tính lương cho toàn bộ thành viên cty 
-- Khối manager : lương = lương tối thiểu (1.500.000) * hsl
-- Khối công nhân, nhân viên : lương = lương cơ bản đã thỏa thuận * số ngày công / số ngày làm việc 

Select e.pID,e.Employee_Name,p.Name as position,e.co_Salary,e.base_Salary,e.isManager from Employee e join Position p on e.pID = p.pID


-- Lấy ra ngày nghỉ và thông tin , lý do nghỉ

Select e.Employee_id,e.Employee_Name,p.Name as position,w.name as workshift,date,r.Name as reason_name,r.isCheck from Employee e join Leave l on e.Employee_id = l.Employee_Id
join Position p on e.pID = p.pID join Work_Shift w on l.cID = w.cID join Reason r on l.reason_id = r.reason_id

-- 

