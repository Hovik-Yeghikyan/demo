<%@ page import="com.example.demo.model.Company" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12.01.2024
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%Company company = (Company) request.getAttribute("company");%>
<%List<Employee> employeeList = (List<Employee>) request.getAttribute("employees");%>
<html>
<head>
    <title><%=company.getName()%>>></title>
</head>
<body>
<h2><%=company.getName()%>|<%=company.getId()%>></h2>
Address:<span><%=company.getAddress()%></span>
Employees:
<%
    if (employeeList != null && !employeeList.isEmpty()) {%>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Email</th>
    </tr>

    <%
        for (Employee employee : employeeList) {%>
    <tr>
        <td><%=employee.getId()%>
        </td>
        <td><%=employee.getName()%>
        </td>
        <td><%=employee.getSurname()%>
        </td>
        <td><%=employee.getEmail()%>
        </td>

    </tr>
    <% }
    %>
</table>
<% }%>
</body>
</html>
