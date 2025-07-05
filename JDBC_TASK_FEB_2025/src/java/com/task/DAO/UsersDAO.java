/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.task.DAO;

/**
 *
 * @author yadav
 */
//
//


import java.sql.Connection;
import com.task.bean.UsersBean;
import com.task.utility.ConnectionPool;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
//
//
//
public class UsersDAO {
   static Connection conn;
//    
   public int addStudent(UsersBean ub){
  int r=0;
////    //step1:
////    //step2: 
   conn=ConnectionPool.connectDB();
////    //step3: Wrtite SQL Query
////    int total=sb.getP()+sb.getC()+sb.getE()+sb.getH()+sb.getM();
////    float per=total/5.0f;
 String sql="insert into users values('"+ub.getUid()+"','"+ub.getName()+"','"+ub.getUsername()+"','"+ub.getPassword()+"','"+ub.getEmail()+"','"+ub.getMobile()+"')";
    try {
////         //step4: Create Object of Statement
       Statement stmt=conn.createStatement();
////         //step5: call executeUpdate()
       r=stmt.executeUpdate(sql);
////         //step6: close the connection
       conn.close();
     } catch (SQLException ex) {
        Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
  return r;
} 
  public static void main(String[] args) {
       UsersBean ub=new UsersBean();
 
        ub.setEmail("Vi@gmail.com");
        ub.setUsername("Vikh@46");
        ub.setMobile(998478979);
        ub.setName("Vikash");
      ub.setPassword("5556");
       ub.setUid(1545);
     UsersDAO ud=new UsersDAO();
      int result=ud.addStudent(ub);
      if(result>0){
           System.out.println("Student Added Success");
      }else{
           System.out.println("Student Not Added");
       }
  }
}
//import java.sql.Connection;
//import com.task.bean.UsersBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//
//
//public class UsersDAO {
//    static Connection conn;
//    
//    public int registerUser(UsersBean ub){
//   int r=0;
////    //step1:
////    //step2: 
//   conn=ConnectionPool.connectDB();
////    //step3: Wrtite SQL Query
////    int total=sb.getP()+sb.getC()+sb.getE()+sb.getH()+sb.getM();
////    float per=total/5.0f;
//  String sql="insert into users values('"+ub.getUid()+"','"+ub.getName()+"','"+ub.getUsername()+"','"+ub.getPassword()+"','"+ub.getEmail()+"','"+ub.getMobile()+"')";
//    try {
////         //step4: Create Object of Statement
//        Statement stmt=conn.createStatement();
////         //step5: call executeUpdate()
//        r=stmt.executeUpdate(sql);
////         //step6: close the connection
//       conn.close();
//     } catch (SQLException ex) {
//        Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
//    }
//  return r;
//} 
//    public int loginCheck(String username, String password){
//        int id = 0;
//        conn = ConnectionPool.connectDB();
//        String sql = "select uid from users where username = '"+username+"' and password = '"+password+"'";
//        try{
//            Statement stmt = conn.createStatement();
//            
//            ResultSet rs = stmt.executeQuery(sql);
//            if ( rs.next()){
//                id = rs.getInt("uid");
//            }
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return id;
//    }
//  public static void main(String[] args) {
//      //1. call registerUser()
////       UsersBean ub=new UsersBean();
//// 
////        ub.setEmail("Vikash@gmail.com");
////        ub.setUsername("Vikash@46");
////        ub.setMobile(998478979);
////        ub.setName("Vikash");
////      ub.setPassword("5555");
////       ub.setUid(1004);
//     UsersDAO ud=new UsersDAO();
//      int r=ud.loginCheck("Vikash@46","5555");
//      if(r>0){
//           System.out.println("Login success");
//      }else{
//           System.out.println("Login fail");
//       }
//   }
//}
//    
//
//    
//    
//
//