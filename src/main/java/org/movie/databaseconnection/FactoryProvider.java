package org.movie.databaseconnection;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

    static Session session;
    public static Session getFactory(){
        Configuration cfg = new Configuration().configure();

        SessionFactory sessionFactory = cfg.buildSessionFactory();

         session = sessionFactory.openSession();

        return session;
    }
}
