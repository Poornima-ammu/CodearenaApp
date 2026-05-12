package com.codearena.dao;
import org.hibernate.Session;
import java.util.*;
import org.hibernate.query.Query;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.codearena.entity.User;
import com.codearena.util.HibernateUtil;
public class UserDAO {
	public void saveUser(User user) {
		Transaction transaction=null;
		try {
			Session session=HibernateUtil.getSessionFactory().openSession();
			transaction=session.beginTransaction();
			session.persist(user);
			transaction.commit();
			session.close();
		}
		catch(Exception e) {
			if(transaction !=null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		
	}
	public User getUserByEmail(String email) {
		Session session=HibernateUtil.getSessionFactory().openSession();
		String hql="from User where email=:email";
		Query<User>query=session.createQuery(hql,User.class);
		query.setParameter("email", email);
		User user=query.uniqueResult();
		session.close();
		return user;
	}
	public void updateUser(User user) {

	    Session session =
	            HibernateUtil.getSessionFactory()
	                         .openSession();

	    Transaction tx =
	            session.beginTransaction();

	    session.update(user);

	    tx.commit();

	    session.close();
	}
	public List<User> getLeaderboardUsers() {

	    Session session =
	            HibernateUtil.getSessionFactory()
	                         .openSession();

	    List<User> users =
	            session.createQuery(
	            "FROM User ORDER BY score DESC",
	            User.class)
	            .list();

	    session.close();

	    return users;
	}
}
