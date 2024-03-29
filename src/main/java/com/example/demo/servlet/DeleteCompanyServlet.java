package com.example.demo.servlet;

import com.example.demo.manager.CompanyManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URI;

@WebServlet(urlPatterns = "/deleteCompany")
public class DeleteCompanyServlet extends HttpServlet {

    private CompanyManager companyManager = new CompanyManager();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        companyManager.delete(id);
        resp.sendRedirect("/companies");
    }
}
