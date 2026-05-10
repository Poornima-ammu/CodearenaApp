package com.codearena.controller;

import jakarta.servlet.ServletException;
import java.util.List;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.codearena.service.ProblemService;
import com.codearena.entity.Problem;

/**
 * Servlet implementation class ProblemListServlet
 */
@WebServlet("/problems")
public class ProblemListServlet extends HttpServlet {
       
   
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Problem list servlet called");

		ProblemService problemService=new  ProblemService();
		List<Problem>problems=problemService.getAllProblems();
		req.setAttribute("problems", problems);
		req.getRequestDispatcher("/WEB-INF/views/problems.jsp").forward(req, res);
		
		
	}

	

}
