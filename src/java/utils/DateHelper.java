/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.YearMonth;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author kienb
 */
public class DateHelper {

    public static int getDaysOfMonths(String year, String month) {
        YearMonth a = YearMonth.of(Integer.parseInt(year), Integer.parseInt(month));
        return a.lengthOfMonth();
    }

    public static int getDayOfWeek(Date datetime) {
        LocalDate localDate = datetime.toInstant()
                .atZone(ZoneId.systemDefault())
                .toLocalDate();
        return localDate.getDayOfWeek().getValue();
    }

    public static Date addDays(Date d, int days) {
        Calendar c = Calendar.getInstance();
        c.setTime(d);
        c.add(Calendar.DATE, days);
        Date newdate = c.getTime();
        return newdate;
    }

    public static Date addMonths(Date d, int months) {
        Calendar c = Calendar.getInstance();
        c.setTime(d);
        c.add(Calendar.MONTH, months);
        Date newdate = c.getTime();
        return newdate;
    }

    public static Date removeTime(int year,int month) {
        Calendar c = Calendar.getInstance();
        c.set(year, month - 1, 1);
        c.set(Calendar.HOUR_OF_DAY, 0);
        c.set(Calendar.MINUTE, 0);
        c.set(Calendar.SECOND, 0);
        c.set(Calendar.MILLISECOND, 0);
        Date newdate = c.getTime();
        return newdate;
    }

    public static ArrayList<Date> getDates(Date from, Date to) {
        ArrayList<Date> dates = new ArrayList<>();
        int count = 0;
        while (true) {

            Date item = addDays(from, count);
            dates.add(item);
            count++;
            if (item.getTime() == to.getTime()) {
                break;
            }
        }
        return dates;
    }

    public static Date getDateFrom(Timestamp ts) {
        return new Date(ts.getTime());
    }

}
