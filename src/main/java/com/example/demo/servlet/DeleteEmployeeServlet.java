package com.example.demo.servlet;

import com.example.demo.manager.CompanyManager;
import com.example.demo.manager.EmployeeManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/deleteEmployee")
public class DeleteEmployeeServlet extends HttpServlet {

    private EmployeeManager employeeManager = new EmployeeManager();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
       employeeManager.delete(id);
        resp.sendRedirect("/employees");
    }
}
