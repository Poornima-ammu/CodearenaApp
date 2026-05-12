package com.codearena.controller;

import java.io.IOException;

import com.codearena.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/admin")
public class AdminDashboardServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session =
                req.getSession(false);

        // Check login
        if(session == null ||
           session.getAttribute("user") == null) {

            res.sendRedirect("login");
            return;
        }

        User user =
                (User) session.getAttribute("user");

        // Check admin role
        if(!"ADMIN".equals(user.getRole())) {

            res.getWriter()
               .println("Access Denied !");
            return;
        }

        // Open admin dashboard
        req.getRequestDispatcher(
                "/WEB-INF/views/admin-dashboard.jsp")
                .forward(req, res);
    }
}