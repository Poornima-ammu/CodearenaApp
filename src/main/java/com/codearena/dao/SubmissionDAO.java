package com.codearena.dao;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.codearena.entity.Submission;
import com.codearena.util.HibernateUtil;
import com.codearena.entity.User;
import java.util.*;
public class SubmissionDAO {
	public void saveSubmission(Submission submission) {
		Transaction transaction =null;
		try {
			Session session=HibernateUtil.getSessionFactory().openSession();
			transaction=session.beginTransaction();
			session.persist(submission);
			transaction.commit();
			session.close();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public List<Submission>getSubmissionsByUser(User user){
		Session session=HibernateUtil.getSessionFactory().openSession();
		Query<Submission> query =
			    session.createQuery(
			        "from Submission where user=:user",
			        Submission.class);

			query.setParameter("user", user);
		List<Submission>submissions=query.list();
		session.close();
		return submissions;
	}
}
