package com.codearena.service;

import java.util.List;

import com.codearena.dao.SubmissionDAO;
import com.codearena.entity.Submission;
import com.codearena.entity.User;

public class SubmissionService {
	
	SubmissionDAO submissionDAO=new SubmissionDAO();
	
	public void saveSubmission(Submission submission) {
		submissionDAO.saveSubmission(submission);
	}
	public List<Submission>getSubmissionsByUser(User user){
		SubmissionDAO submissionDAO=new SubmissionDAO();
		return submissionDAO.getSubmissionsByUser(user);
		
	}
	

}
