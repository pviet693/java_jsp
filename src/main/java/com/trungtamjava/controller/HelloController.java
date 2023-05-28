package com.trungtamjava.controller;

import com.trungtamjava.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = {"/hello", "/xin-chao"})
public class HelloController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = "viet";
        User user = new User("Viet vip pro", "98 To Vinh Dien, Thanh Xuan, Ha Noi");

        req.setAttribute("myName", name);
        req.setAttribute("user", user);

        RequestDispatcher dispatcher = req.getRequestDispatcher("hello.jsp");
        dispatcher.forward(req, resp);
    }
}
