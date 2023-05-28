<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP - Hello JSP</title>
    </head>
    <body>
        <h1>Hello JSP</h1>
        <a href="user/profile.jsp?id=1&name=viet">Thong tin nguoi dung</a>
        <a href="user/addUser.jsp">Them user</a>
        <%
            int x = 10,
                y = 15,
                z = x + y;
        %>
        <h1><%= z %></h1>
    </body>
</html>