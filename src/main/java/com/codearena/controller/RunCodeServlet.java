package com.codearena.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.codearena.util.CodeExecutor;

/**
 * Servlet implementation class RunCodeServlet
 */
@WebServlet("/runCode")
public class RunCodeServlet extends HttpServlet {
       
   
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String code=req.getParameter("code");
		CodeExecutor executor=new CodeExecutor();
		String output=executor.executeJava(code);
		req.setAttribute("output",output);
		req.getRequestDispatcher("/WEB-INF/views/output.jsp").forward(req,res);
	}

}
