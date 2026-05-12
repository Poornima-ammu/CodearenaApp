package com.codearena.dao;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.codearena.entity.Problem;
import com.codearena.util.HibernateUtil;

public class ProblemDAO {
	
	public void saveProblem(Problem problem) {
		Transaction transaction=null;
		try {
			Session session=HibernateUtil.getSessionFactory().openSession();
			transaction =session.beginTransaction();
			session.persist(problem);
			transaction.commit();
			session.close();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public List<Problem>getAllProblems(){
		Session session=HibernateUtil.getSessionFactory().openSession();
		List<Problem>problems=session.createQuery("from Problem",Problem.class).list();
		session.close();
		
		return problems;
	}
	public Problem getProblemById(int id) {
		Session session=HibernateUtil.getSessionFactory().openSession();
		Problem problem=session.get(Problem.class,id);
		session.close();
		return problem;
	}
	
}
