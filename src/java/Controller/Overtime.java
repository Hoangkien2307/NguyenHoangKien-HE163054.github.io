/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.EmployeeDBContext;
import Model.Employee;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import utils.DateHelper;

/**
 *
 * @author kienb
 */
public class Overtime extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String date = request.getParameter("date");
            String[] list = date.split("\\-");
            EmployeeDBContext edb = new EmployeeDBContext();
            ArrayList<Employee> list_emp = edb.getAllSalaryByDate(Integer.parseInt(list[1]),
                    Integer.parseInt(list[0]));
            double sum = 0;
            for (Employee i : list_emp) {
                sum += i.totalWorking();
            }
            if (sum == 0) {
                request.setAttribute("error", "No data at that time");
            } else {
                Date today = DateHelper.removeTime(Integer.parseInt(list[0]),Integer.parseInt(list[1]));
                Date end = DateHelper.addDays(DateHelper.addMonths(today, 1), -1);
                ArrayList<Date> dates = DateHelper.getDates(today, end);
                request.setAttribute("list", list_emp);
                request.setAttribute("dates", dates);
            }
            request.setAttribute("year", list[0]);
            request.setAttribute("month", list[1]);
        } catch (NumberFormatException ex) {
        }
        request.getRequestDispatcher("overtime.jsp").forward(request, response);
    }

}
