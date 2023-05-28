<%@ page import="org.glassfish.jersey.internal.guava.MoreObjects" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP - Profile</title>
    </head>
    <body>
        <h1>Profile</h1>

        <%
            int id = Integer.valueOf(request.getParameter("id"));
            String name = request.getParameter("name");
        %>

        <p>Chao ban: <%= name %>, ID cua ban la: <%= id %></p>
        <a href="logout.jsp">Dang xuat</a>
    </body>
</html>