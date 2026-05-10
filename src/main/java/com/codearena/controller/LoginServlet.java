package com.codearena.controller;

import java.io.IOException;

import com.codearena.dao.UserDAO;
import com.codearena.entity.User;
import com.codearena.util.BCryptUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    request.getRequestDispatcher("/WEB-INF/views/login.jsp")
	           .forward(request, response);
	}

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String email =
                request.getParameter("email");

        String password =
                request.getParameter("password");

        UserDAO userDAO = new UserDAO();

        User user =
                userDAO.getUserByEmail(email);

        if(user != null &&
           BCryptUtil.checkPassword(
                   password,
                   user.getPassword())) {

            HttpSession session =
                    request.getSession();

            session.setAttribute("user", user);

            response.sendRedirect("dashboard");

        } else {

            response.getWriter()
                    .println("Invalid Credentials");
        }
    }
}