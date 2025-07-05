/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ram.operations;

import com.ram.utility.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author yadav
 */
public class CountNumofStudent {
  public static void  main(String args[]){
      SessionFactory  sf = HibernateUtil.getSessionFactory();
      Session session = sf.openSession();
      
//      // Count number of sutdent
//      Query q = session.createQuery("SELECT COUNT(sid) FROM Student s");
//      Long counts = (Long)q.uniqueResult();
//      System.out.println("Count number of student: " + counts);
//      session.close();
//      
//      
//      // Sum of total number of sutdent
//      Query q = session.createQuery("SELECT SUM(total) FROM Student s");
//      Long counts = (Long)q.uniqueResult();
//      System.out.println("Count number of student: " + counts);
//      session.close();



      // Maximum number of sutdent marks
//      Query q = session.createQuery("SELECT MAX(p) FROM Student s");
//      Long counts = (Long)q.uniqueResult();
//      System.out.println("Count number of student: " + counts);
//      session.close();
      
      
      
  }
}
