package com.codearena.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.codearena.service.ProblemService;

import com.codearena.entity.Problem;
@WebServlet("/problem")
public class ProblemDetailsServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String pid=req.getParameter("id");
		if(pid==null || pid.isEmpty()) {
			res.sendRedirect("problems");
			return;
		}
		int problemId=Integer.parseInt(pid);
		ProblemService problemService=new ProblemService();
		Problem problem=problemService.getProblemById(problemId);
		
	req.setAttribute("problem", problem);
	req.getRequestDispatcher("/WEB-INF/views/problem-details.jsp").forward(req, res);
	
	}

	

}
