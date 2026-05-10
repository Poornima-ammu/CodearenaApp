package com.codearena;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;
class App {
	public static void main(String[]args) {
		Configuration con=new Configuration().configure("hibernate.cfg.xml");
		SessionFactory factory=con.buildSessionFactory();
		Session session=factory.openSession();
		System.out.println("connected");
	}
}
