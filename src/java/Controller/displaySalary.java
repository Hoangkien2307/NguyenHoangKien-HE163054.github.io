/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.EmployeeDBContext;
import Model.Employee;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author kienb
 */
public class displaySalary extends HttpServlet {

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
                request.setAttribute("list", list_emp);
            }
            request.setAttribute("year", list[0]);
            request.setAttribute("month", list[1]);
        } catch (NumberFormatException ex) {

        }
        request.getRequestDispatcher("luong.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
