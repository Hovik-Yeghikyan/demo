<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Company" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09.01.2024
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Company> companies = (List<Company>) request.getAttribute("companies");

%>

Companies

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
    </tr>
    <%
        if (!companies.isEmpty()) {
            for (Company company : companies) {%>
<tr>
    <td><%=company.getId()%></td>
    <td><%=company.getName()%></td>
    <td><%=company.getAddress()%></td>
</tr>
    <% }
    }
    %>
</table>
</body>
</html>
