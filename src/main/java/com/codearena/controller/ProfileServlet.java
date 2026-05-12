package com.codearena.controller;

import java.io.IOException;

import com.codearena.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session =
                req.getSession();

        User user =
                (User) session.getAttribute("user");

        if(user == null) {

            res.sendRedirect("login");
            return;
        }

        req.setAttribute("user", user);

        req.getRequestDispatcher(
                "/WEB-INF/views/profile.jsp")
                .forward(req, res);
    }
}