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
public class Overtime {
    private int id;
    private Date date;
    private double hours;
    private ArrayList<Employee> list_emp = new ArrayList<>();

    public Overtime() {
    }

    public Overtime(int id, Date date, double hours) {
        this.id = id;
        this.date = date;
        this.hours = hours;
    }

    public double getHours() {
        return hours;
    }

    public void setHours(double hours) {
        this.hours = hours;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public ArrayList<Employee> getList_emp() {
        return list_emp;
    }

    public void setList_emp(ArrayList<Employee> list_emp) {
        this.list_emp = list_emp;
    }
    
    
}
