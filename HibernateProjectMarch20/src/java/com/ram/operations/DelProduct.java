///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.ram.operations;
//
//import com.ram.bean.Product;
////import com.ram.bean.Student;
//import com.ram.utility.HibernateUtil;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
//
///**
// *
// * @author yadav
// */
//public class DelProduct {
//    public static void main(String args[]){
//    
//    // STEP 1 ->  CREATE OBJECT OF SESSSION FACTORY
//     SessionFactory sf = HibernateUtil.getSessionFactory();
//     
//     // STEP 2 ->   Create Object of Sesssion
//     Session session = sf.openSession();
//     
//     // STEP 3 -> Create object of student Bean class
//     Product p = new Product(103);
//     
//
//     // Step 5 -> Call save method 
//     session.delete(p);
//     
//     // Step 6 -> Creat an object of Transaction
//     Transaction tx = session.beginTransaction();
//     
//     
//     // step 7 -> call commit method 
//     tx.commit();
//        System.out.println("Product Deletion success");
//     // step 8 -> close
//     session.close();
//     sf.close();
//     
//     
//     
//             }
//    
//}
