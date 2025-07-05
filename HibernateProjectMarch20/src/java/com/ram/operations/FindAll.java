/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ram.operations;

import com.ram.bean.Student;
import com.ram.utility.HibernateUtil;
import java.util.ArrayList;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;

/**
 *
 * @author Admin
 */
public class FindAll {
    public static void main(String[] args) {
        //step1: SessionFactory object
        SessionFactory sf=HibernateUtil.getSessionFactory();
        //step2: Session
        Session session=sf.openSession();
        //step3: Create Object of Query(I)
      //  Query q=session.createQuery("from Student s");
      Criteria q = session.createCriteria(Student.class);
      q.addOrder(Order.desc("total"));
        ArrayList<Student> all=(ArrayList<Student>)q.list();
        //step4: Traverse Data using for each
        for(Student sb:all){
            System.out.println(""+sb.getEnroll()+"\t"+sb.getName()+"\t"+sb.getPer()+"\t"+sb.getTotal());
        }
        session.close();
        sf.close();
    }
}