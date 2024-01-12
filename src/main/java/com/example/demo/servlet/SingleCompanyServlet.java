package com.example.demo.servlet;

import com.example.demo.manager.CompanyManager;
import com.example.demo.manager.EmployeeManager;
import com.example.demo.model.Company;
import com.example.demo.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/singleCompany")
public class SingleCompanyServlet extends HttpServlet {

    private CompanyManager companyManager = new CompanyManager();
    private EmployeeManager employeeManager = new EmployeeManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Company companyByID = companyManager.getCompanyById(id);
        if (companyByID==null){
            resp.sendRedirect("/companies");
        }else{
           List<Employee> employeeList = employeeManager.getByCompanyID(id);
           req.setAttribute("company",companyByID);
           req.setAttribute("employees",employeeList);
           req.getRequestDispatcher("/WEB-INF/singleCompany.jsp").forward(req,resp);
        }
    }
}
