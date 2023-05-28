<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/5/2023
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    Cookie cookie = new Cookie("age", "25");
    cookie.setMaxAge(30);

    response.addCookie(cookie);
%>
<html>
    <head>
        <title>Them User</title>
    </head>
    <body>
        <form action="viewUser.jsp" method="post">
            <div>
                <label for="name">Name: </label>
                <input id="name" name="name" type="text" placeholder="Ten nguoi dung"/>
            </div>
            <div>
                <label for="password">Password: </label>
                <input id="password" name="password" type="password" placeholder="Mat khau" />
            </div>
            <div>
                <label for="phone">Phone: </label>
                <input id="phone" name="phone" type="text" placeholder="So dien thoai"/>
            </div>
            <div>
                <label for="about">About: </label>
                <textarea cols="3" rows="3" name="about" id="about" placeholder="So thich"></textarea>
            </div>
            <div>
                <input name="favorite1" type="checkbox" id="favorite1" value="Xem phim" />
                <label for="favorite1">Xem phim</label>
            </div>
            <div>
                <input name="favorite2" type="checkbox" id="favorite2" value="Nghe nhac" />
                <label for="favorite2">Nghe nhac</label>
            </div>
            <input type="submit" value="Them" />
        </form>
    </body>
</html>
