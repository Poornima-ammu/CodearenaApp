package com.codearena.controller;

import jakarta.servlet.ServletException;
import com.codearena.entity.User;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.codearena.service.UserService;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    request.getRequestDispatcher("/WEB-INF/views/register.jsp")
	           .forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		User user=new User();
		
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		UserService userService=new UserService();
		userService.registerUser(user);
		response.sendRedirect("login");
	}

}
