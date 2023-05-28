<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/5/2023
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>Xem User</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            String about = request.getParameter("about");
            String favorite1 = request.getParameter("favorite1");
            String favorite2 = request.getParameter("favorite2");
            String favorite = "";
            if (favorite1 != null) {
                favorite += favorite1;
            }
            if (favorite2 != null) {
                favorite += ", " + favorite2;
            }

            String myName = session.getAttribute("name").toString();
            String myAge = "0";
            Cookie[] cookies = request.getCookies();

            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("age")) {
                        myAge = cookie.getValue();
                    }
                }
            }
        %>

        <p>My name: <%= myName %></p>
        <p>My age: <%= myAge %></p>

        <table>
            <tr>
                <td>Ten</td>
                <td><%= name %></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><%= password %></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td><%= phone %></td>
            </tr>
            <tr>
                <td>About</td>
                <td><%= about %></td>
            </tr>
            <tr>
                <td>Favorite</td>
                <td><%= favorite %></td>
            </tr>
        </table>
    </body>
</html>
