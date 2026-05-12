package com.codearena.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

import com.codearena.entity.Problem;
import com.codearena.entity.Submission;
import com.codearena.entity.User;
import com.codearena.dao.UserDAO;


import com.codearena.service.ProblemService;
import com.codearena.service.SubmissionService;


/**
 * Servlet implementation class SubmitCodeServlet
 */
@WebServlet("/submitCode")
public class SubmitCodeServlet extends HttpServlet {
	@Override 
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String code=req.getParameter("code");
		 String pid = req.getParameter("problemId");

	        if(pid == null || pid.isEmpty()) {
	            res.sendError(HttpServletResponse.SC_BAD_REQUEST, "Problem ID missing");
	            return;
	        }
		int problemId=Integer.parseInt(pid);
		HttpSession session=req.getSession();
		
		User user=(User)session.getAttribute("user");
		if(user == null) {

		    res.sendRedirect(
		            req.getContextPath() + "/login");

		    return;
		}
		ProblemService problemService=new ProblemService();
		Problem problem=problemService.getProblemById(problemId);
		
		Submission submission=new Submission();
		submission.setCode(code);
		String output =
		        new com.codearena.util.CodeExecutor()
		        .executeJava(code);

		String expected =
		        problem.getExpectedOutput();

		if(output.trim().equals(expected.trim())) {

		    submission.setVerdict("Accepted");

		    user.setScore(user.getScore() + 10);

		} else {

		    submission.setVerdict("Wrong Answer");
		}
		submission.setSubmittedAt(LocalDateTime.now());
		submission.setUser(user);
		 
		submission.setProblem(problem);
		UserDAO userDAO = new UserDAO();
		userDAO.updateUser(user);
		
		
		SubmissionService submissionService=new  SubmissionService();
		submissionService.saveSubmission(submission);

		res.sendRedirect("submissions");
	
	}

}
