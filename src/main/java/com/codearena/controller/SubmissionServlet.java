package com.codearena.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.codearena.entity.Submission;
import com.codearena.entity.User;
import com.codearena.service.SubmissionService;

@WebServlet("/submissions")
public class SubmissionServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession();

        User user = (User) session.getAttribute("user");

        if (user == null) {
            res.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        SubmissionService submissionService = new SubmissionService();

        List<Submission> submissions =
                submissionService.getSubmissionsByUser(user);

        req.setAttribute("submissions", submissions);

        req.getRequestDispatcher("/WEB-INF/views/submissions.jsp")
           .forward(req, res);
    }
}