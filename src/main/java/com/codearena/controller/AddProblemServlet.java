package com.codearena.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.codearena.entity.Problem;
import com.codearena.service.ProblemService;
/**
 * Servlet implementation class AddProblemServlet
 */
@WebServlet("/addProblem")
public class AddProblemServlet extends HttpServlet {
	

	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	req.getRequestDispatcher("/WEB-INF/views/addProblem.jsp").forward(req, res);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		System.out.println("AddProblem servlet called");

		String title=req.getParameter("title");
		String difficulty=req.getParameter("difficulty");
		String description=req.getParameter("description");
		String sampleInput=req.getParameter("sampleInput");
		String sampleOutput=req.getParameter("sampleOutput");
		String expectedOutput=req.getParameter("expectedOutput");
		
		Problem problem=new Problem();
		problem.setTitle(title);
		problem.setDifficulty(difficulty);
		problem.setDescription(description);
		problem.setSampleInput(sampleInput);
		problem.setSampleOutput(sampleOutput);
		problem.setExpectedOutput(expectedOutput);
		
		ProblemService problemService=new ProblemService();
		problemService.addProblem(problem);
		res.sendRedirect(req.getContextPath() + "/problems");
	}

}
