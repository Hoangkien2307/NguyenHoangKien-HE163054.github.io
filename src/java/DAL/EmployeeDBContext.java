/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Allowdance;
import Model.Employee;
import Model.Insurance;
import Model.Leave;
import Model.Overtime;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kienb
 */
public class EmployeeDBContext extends DBContext {

    public ArrayList<Employee> getAllSalaryByDate(int month, int year) {
        ArrayList<Employee> list = new ArrayList<>();
        try {
            String sql = "Select e.Employee_id,e.Employee_Name,p.Name,"
                    + "e.base_Salary,e.isurance_money,p.isManager\n"
                    + "from Employee e join Position p on e.pID = p.pID ";
            PreparedStatement ptm = getConnection().prepareStatement(sql);
            ResultSet rs = ptm.executeQuery();
            while (rs.next()) {
                Employee e = new Employee();
                e.setId(rs.getString(1));
                e.setEmp_name(rs.getString(2));
                e.setPosition(rs.getString(3));
                e.setBase_salary(rs.getDouble(4));
                e.setIns_salary(rs.getDouble(5));
                e.setIsManager(rs.getBoolean(6));
                list.add(e);
            }
            String xSql = "Select e.Employee_id,work_date from Employee e join Working_time w on e.Employee_id = w.Employee_id\n"
                    + "where Month(work_date) = ? and YEAR(work_date) = ?";
            PreparedStatement stm = getConnection().prepareStatement(xSql);
            stm.setInt(1, month);
            stm.setInt(2, year);
            ResultSet a = stm.executeQuery();
            while (a.next()) {
                for (Employee i : list) {
                    if (i.getId().equals(a.getString(1))) {
                        i.getList_workingtime().add(a.getDate(2));
                        break;
                    }
                }
            }
            String ySql = "Select e.Employee_id,ea.Allow_id,a.name,ea.amount from Employee e join Employee_Allowance ea on e.Employee_id = ea.Employee_id\n"
                    + "join Allowance a on ea.Allow_id = a.id where ea.month = ? and ea.year = ?";
            PreparedStatement xtm = getConnection().prepareStatement(ySql);
            xtm.setInt(1, month);
            xtm.setInt(2, year);
            ResultSet b = xtm.executeQuery();
            while (b.next()) {
                for (Employee i : list) {
                    if (i.getId().equals(b.getString(1))) {
                        Allowdance r = new Allowdance();
                        r.setId(b.getInt(2));
                        r.setName(b.getString(3));
                        r.setMoney(b.getDouble(4));
                        i.getList_allow().add(r);
                        break;
                    }
                }
            }
            String rSql = "Select e.Employee_id,o.overtime_id,o.date,o.Hour "
                    + "from Employee e left join over_EMP ov on e.Employee_id = ov.Employee_id\n"
                    + "left join Overtime o on ov.overtime_id = o.overtime_id\n"
                    + "where Month(o.date) = ? and YEAR(o.date) = ? and isCheck = 1";
            PreparedStatement rtm = getConnection().prepareStatement(rSql);
            rtm.setInt(1, month);
            rtm.setInt(2, year);
            ResultSet c = rtm.executeQuery();
            while (c.next()) {
                for (Employee i : list) {
                    if (i.getId().equals(c.getString(1))) {
                        Overtime o = new Overtime();
                        o.setId(c.getInt(2));
                        o.setDate(c.getDate(3));
                        o.setHours(c.getDouble(4));
                        i.getList_overtime().add(o);
                        break;
                    }
                }
            }
            String qSql = "Select e.Employee_id,i.id,i.name,i.[percent] "
                    + "from Employee e join Emp_Insurance ei on e.Employee_id = ei.Employee_id\n"
                    + " join Insurance i on ei.ins_id = i.id ";
            PreparedStatement qtm = getConnection().prepareStatement(qSql);
            rtm.setInt(1, month);
            rtm.setInt(2, year);
            ResultSet d = qtm.executeQuery();
            while (d.next()) {
                for (Employee i : list) {
                    if (i.getId().equals(d.getString(1))) {
                        Insurance m = new Insurance();
                        m.setId(d.getInt(2));
                        m.setName(d.getString(3));
                        m.setPercent(d.getDouble(4));
                        i.getList_ins().add(m);
                        break;
                    }
                }
            }
            String aSql = "Select e.Employee_id,l.leave_id,l.[from],l.[to] from Employee e left join Leave l on e.Employee_id = l.Employee_Id \n"
                    + "left join Reason r on l.reason_id = r.reason_id where isCheck = 1\n"
                    + "and (MONTH(l.[from]) = ? or MONTH(l.[to]) = ?) and \n"
                    + "(Year(l.[from]) = ? or Year(l.[to]) = ?)";
            PreparedStatement atm = getConnection().prepareStatement(aSql);
            rtm.setInt(1, month);
            rtm.setInt(2, month);
            rtm.setInt(3, year);
            rtm.setInt(4, year);
            ResultSet e = qtm.executeQuery();
            while (e.next()) {
                for (Employee i : list) {
                    if (i.getId().equals(e.getString(1))) {
                        Leave l = new Leave();
                        l.setId(e.getInt(2));
                        l.setFrom(e.getDate(3));
                        l.setTo(e.getDate(4));
                        i.getList_leave().add(l);
                    }
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
