<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Company" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12.01.2024
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add employee</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<% List<Company> companies = (List<Company>) request.getAttribute("companies");%>

Add Employee <br>
<form method="post" action="/addEmployee">
    Name: <input type="text" name="name"> <br>
    Surame: <input type="text" name="surname"> <br>
    Email: <input type="text" name="email"> <br>

    <select name="companyId">
        <%
            for (Company company : companies) {%>
        <option value="<%=company.getId()%>"><%=company.getName()%>

        </option>
        <%}%>

    </select> <br>

    <input type="submit" value="add">
</form>
</body>
</html>
