/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ram.operations;

import com.ram.bean.Product;
import com.ram.utility.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author yadav
 */
public class AddProduct {
    public static void main(String[] args) {
        //step1:Create Object of SessionFactory
        SessionFactory sf=HibernateUtil.getSessionFactory();
        //step2: Create Object of Session
        Session session=sf.openSession();
        //step3: Create object of Product class
        Product p=new Product();
        //step4: set data into bean object
        p.setPid(101);
        p.setPname("PowerBank");
        p.setPrice(1000.67f);
        //Step5: Call save method via Session
        session.save(p);
        //step6: Create Object of Transaction
        Transaction tx=session.beginTransaction();
        //step7: Call commit method via Transaction
        tx.commit();
        //step8: close the session and sessionFactory
        System.out.println("Product add success");
        session.close();
        sf.close();
        
    }
}
