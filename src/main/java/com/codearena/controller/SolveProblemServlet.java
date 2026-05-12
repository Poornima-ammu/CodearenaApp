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
 * Servlet implementation class SolveProblemServlet
 */
@WebServlet("/solveProblem")
public class SolveProblemServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String idParam = req.getParameter("id");

        if(idParam == null || idParam.isEmpty()) {
            res.sendError(HttpServletResponse.SC_BAD_REQUEST, "Problem ID is missing");
            return;
        }

        int id = Integer.parseInt(idParam);

        ProblemService problemService = new ProblemService();
        Problem problem = problemService.getProblemById(id);

        if(problem == null) {
            res.sendError(HttpServletResponse.SC_NOT_FOUND, "Problem not found");
            return;
        }

        req.setAttribute("problem", problem);

        req.getRequestDispatcher("/WEB-INF/views/solveProblem.jsp")
           .forward(req, res);
    }
}
