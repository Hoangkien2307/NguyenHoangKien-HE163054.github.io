/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author kienb
 */
public class Festival {
    private int fesID;
    private String name;
    private Date from;
    private Date to;
    private double co_feswork;

    public Festival() {
    }

    public Festival(int fesID, String name, Date from, Date to, double co_feswork) {
        this.fesID = fesID;
        this.name = name;
        this.from = from;
        this.to = to;
        this.co_feswork = co_feswork;
    }

    public int getFesID() {
        return fesID;
    }

    public void setFesID(int fesID) {
        this.fesID = fesID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getFrom() {
        return from;
    }

    public void setFrom(Date from) {
        this.from = from;
    }

    public Date getTo() {
        return to;
    }

    public void setTo(Date to) {
        this.to = to;
    }

    public double getCo_feswork() {
        return co_feswork;
    }

    public void setCo_feswork(double co_feswork) {
        this.co_feswork = co_feswork;
    }
    
    
}
