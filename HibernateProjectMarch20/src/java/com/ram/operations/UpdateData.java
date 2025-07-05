/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ram.operations;

import com.ram.bean.Student;
import com.ram.utility.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author yadav
 */
public class UpdateData {
    public static void main(String args[]){
    
    // STEP 1 ->  CREATE OBJECT OF SESSSION FACTORY
     SessionFactory sf = HibernateUtil.getSessionFactory();
     
     // STEP 2 ->   Create Object of Sesssion
     Session session = sf.openSession();
     
     // STEP 3 -> Create object of student Bean class
     Student sb = new Student();
     
     // Step 4 -> set all data into beans 
     sb.setSid(105);
     sb.setName("Taniska");
     sb.setEnroll("0111CS221156");
     sb.setP(1);
     sb.setC(1);
     sb.setM(2);
     sb.setH(3);
     sb.setE(4);
     int total = sb.getP()+ sb.getC() + sb.getM()+ sb.getH() + sb.getE();
     float per= total/5.0f;
     sb.setTotal(total);
     sb.setPer(per);
     
     // Step 5 -> Call update method 
     session.update(sb);
     
     // Step 6 -> Creat an object of Transaction
     Transaction tx = session.beginTransaction();
     
     
     // step 7 -> call commit method 
     tx.commit();
        System.out.println("Data updation success");
     // step 8 -> close
     session.close();
     sf.close();
     
     
     
             }
    
}
