/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import DAL.FestivalDBContext;
import java.util.ArrayList;
import java.util.Date;
import utils.DateHelper;

/**
 *
 * @author kienb
 */
public class Employee {

    private String id;
    private String emp_name;
    private String position;
    private ArrayList<Date> list_workingtime = new ArrayList<>();
    private double base_salary;
    private double ins_salary;
    private boolean isManager;
    private ArrayList<Allowdance> list_allow = new ArrayList<>();
    private ArrayList<Overtime> list_overtime = new ArrayList<>();
    private ArrayList<Insurance> list_ins = new ArrayList<>();
    private ArrayList<Leave> list_leave = new ArrayList<>();
    public Employee() {
    }

    public Employee(String id, String emp_name, String position, double base_salary, double ins_salary, boolean isManager) {
        this.id = id;
        this.emp_name = emp_name;
        this.position = position;
        this.base_salary = base_salary;
        this.ins_salary = ins_salary;
        this.isManager = isManager;
    }

    public ArrayList<Leave> getList_leave() {
        return list_leave;
    }

    public void setList_leave(ArrayList<Leave> list_leave) {
        this.list_leave = list_leave;
    }

    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmp_name() {
        return emp_name;
    }

    public void setEmp_name(String emp_name) {
        this.emp_name = emp_name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public ArrayList<Date> getList_workingtime() {
        return list_workingtime;
    }

    public void setList_workingtime(ArrayList<Date> list_workingtime) {
        this.list_workingtime = list_workingtime;
    }

    public double getBase_salary() {
        return base_salary;
    }

    public void setBase_salary(double base_salary) {
        this.base_salary = base_salary;
    }

    public double getIns_salary() {
        return ins_salary;
    }

    public void setIns_salary(double ins_salary) {
        this.ins_salary = ins_salary;
    }

    public boolean isIsManager() {
        return isManager;
    }

    public void setIsManager(boolean isManager) {
        this.isManager = isManager;
    }

    public ArrayList<Allowdance> getList_allow() {
        return list_allow;
    }

    public void setList_allow(ArrayList<Allowdance> list_allow) {
        this.list_allow = list_allow;
    }

    public ArrayList<Overtime> getList_overtime() {
        return list_overtime;
    }

    public void setList_overtime(ArrayList<Overtime> list_overtime) {
        this.list_overtime = list_overtime;
    }

    public ArrayList<Insurance> getList_ins() {
        return list_ins;
    }

    public void setList_ins(ArrayList<Insurance> list_ins) {
        this.list_ins = list_ins;
    }

    public double totalWorking() {
        double sum = 0;
        FestivalDBContext fdb = new FestivalDBContext();
        ArrayList<Festival> list_fes = fdb.getFestivalAll();
        for (Date i : list_workingtime) {
            Festival temp = null;
            for (Festival p : list_fes) {
                if (i.compareTo(p.getFrom()) >= 0 && i.compareTo(p.getTo()) <= 0) {
                    temp = p;
                    break;
                }
            }
            if (temp == null) {
                sum++;
            } else {
                sum += temp.getCo_feswork();
            }
        }
        return sum;
    }

    public double totalHoursOvertime() {
        double result = 0;
        for (Overtime i : list_overtime) {
            result += i.getHours();
        }
        return result;
    }

    public double getRealSalary(String year, String month) {
        double salaryOnday = (isManager ? base_salary / DateHelper.getDaysOfMonths(year, month) : base_salary / 26);
        double total_Ins = 0;
        for (Insurance i : list_ins) {
            total_Ins += i.getPercent() * ins_salary;
        }
        double total_allow = 0;
        for (Allowdance i : list_allow) {
            total_allow += i.getMoney();
        }
        return salaryOnday * totalWorking() + salaryOnday * totalHoursOvertime() * 1.5 / 8 - total_Ins + total_allow;
    }

}
