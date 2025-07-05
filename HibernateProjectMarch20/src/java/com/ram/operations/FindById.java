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
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author yadav
 */
public class FindById {
    public static void main(String[] args) {
        //step1: Create Object of SessionFactory
        SessionFactory sf=HibernateUtil.getSessionFactory();
        //step2: Create Object of Session
        Session session=sf.openSession();
        //Step3: Create Object of Criteria
        Criteria crit=session.createCriteria(Student.class);
        //1. findByID
////        crit.add(Restrictions.eq("sid", new Integer(101)));
////        ArrayList<Student> all=(ArrayList<Student>)crit.list();
////        for(Student sb:all){
////            System.out.println("\t"+sb.getName()+"\t"+sb.getEnroll()+"\t"+sb.getTotal()+"\t"+sb.getPer());
////        }
//2. FindBY Total Marks
// crit.add(Restrictions.eq("total", new Integer(288)));
//        ArrayList<Student> all=(ArrayList<Student>)crit.list();
//        for(Student sb:all){
//            System.out.println("\t"+sb.getName()+"\t"+sb.getEnroll()+"\t"+sb.getTotal()+"\t"+sb.getPer());
//        }

// //3. Find Data of Student whose total marks greater than 288
//  crit.add(Restrictions.gt("total", new Integer(288)));
//        ArrayList<Student> all=(ArrayList<Student>)crit.list();
//        for(Student sb:all){
//            System.out.println("\t"+sb.getName()+"\t"+sb.getEnroll()+"\t"+sb.getTotal()+"\t"+sb.getPer());
//        
//4. Find Data of Student whose total marks greater than or equal 288
//  crit.add(Restrictions.ge("total", new Integer(288)));
//        ArrayList<Student> all=(ArrayList<Student>)crit.list();
//        for(Student sb:all){
//            System.out.println("\t"+sb.getName()+"\t"+sb.getEnroll()+"\t"+sb.getTotal()+"\t"+sb.getPer());
//        }
// //5. Find Data of Student whose total marks less than  288
//  crit.add(Restrictions.lt("total", new Integer(288)));
//        ArrayList<Student> all=(ArrayList<Student>)crit.list();
//        for(Student sb:all){
//            System.out.println("\t"+sb.getName()+"\t"+sb.getEnroll()+"\t"+sb.getTotal()+"\t"+sb.getPer());
//        }   
//5. Find Data of Student whose total marks less than or equal 288
    crit.add(Restrictions.le("total", new Integer(288)));
 
        ArrayList<Student> all=(ArrayList<Student>)crit.list();
        for(Student sb:all){
            System.out.println("\t"+sb.getName()+"\t"+sb.getEnroll()+"\t"+sb.getTotal()+"\t"+sb.getPer());
        }  
 session.close();
        sf.close();
        
    }
}
