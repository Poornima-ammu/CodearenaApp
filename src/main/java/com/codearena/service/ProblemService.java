package com.codearena.service;
import java.util.List;
import com.codearena.dao.ProblemDAO;
import com.codearena.entity.Problem;
public class ProblemService {
	ProblemDAO problemDAO=new ProblemDAO();
	public void addProblem(Problem problem) {
		problemDAO.saveProblem(problem);
	}
	public List<Problem>getAllProblems(){
		return problemDAO.getAllProblems();
	}

}
