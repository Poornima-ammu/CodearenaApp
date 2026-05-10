package com.codearena.Listener;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

import com.codearena.util.HibernateUtil;

@WebListener
public class AppContextListener implements ServletContextListener {

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

        System.out.println("Closing Hibernate SessionFactory...");

        HibernateUtil.getSessionFactory().close();
    }
}