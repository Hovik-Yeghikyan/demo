<%@ page import="com.example.demo.model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>
        Home Page
    </title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<% if (session.getAttribute("user") != null) {
    User user = (User) session.getAttribute("user");
%>
Welcome <%=user.getName() + " " + user.getSurname()%>  !!! <a href="/logout">Logout</a>
<%
    }
%>
<div style="margin: 0 auto">
    <a href="/companies">View All Companies</a>
    <a href="/employees">View All Employees</a>

</div>


</body>
</html>