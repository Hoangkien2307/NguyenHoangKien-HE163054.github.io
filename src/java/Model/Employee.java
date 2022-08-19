/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.Date;

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
    private double reno_salary;
    private ArrayList<Allowdance> list_allow = new ArrayList<>();
    private ArrayList<Overtime> list_overtime = new ArrayList<>();
    private ArrayList<Insurance> list_ins = new ArrayList<>();

    public Employee() {
    }

    public Employee(String id, String emp_name, String position, double base_salary, double ins_salary, double reno_salary) {
        this.id = id;
        this.emp_name = emp_name;
        this.position = position;
        this.base_salary = base_salary;
        this.ins_salary = ins_salary;
        this.reno_salary = reno_salary;
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

    public double getReno_salary() {
        return reno_salary;
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

}
