/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
// */

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohit.dao;

import com.mohit.bean.Users2Bean;
import com.mohit.utility.ConnectionPool;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Users2DAO {
static Connection conn;
public int registerUser(Users2Bean ub){
    int r=0;
    //step1:
    //step2:
    conn=ConnectionPool.connectDB();
    //step3:
    String sql="insert into users2 values('"+ub.getLid()+"','"+ub.getName()+"','"+ub.getUsername()+"','"+ub.getPassword()+"','"+ub.getEmail()+"','"+ub.getMobile()+"')";
    try {
        //step4:Create object of Statement
        Statement stmt=conn.createStatement();
        //step5:  call execute update method
        r=stmt.executeUpdate(sql);
        //step6: close the connection
        conn.close();
    } catch (SQLException ex) {
        Logger.getLogger(Users2DAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    
    
    return r;
            
}
public int loginCheck(String userName,String password){
    int id=0;
    conn=ConnectionPool.connectDB();
    String sql="select lid from users2 where username='"+userName+"' and password='"+password+"'";
    try {
        Statement stmt=conn.createStatement();
        
        ResultSet rs=stmt.executeQuery(sql);
        if(rs.next()){
            id=rs.getInt("lid");
        }
        conn.close();
    } catch (SQLException ex) {
        Logger.getLogger(Users2DAO.class.getName()).log(Level.SEVERE, null, ex);
    }
   
    return id;

}
public Users2Bean findById(int id){
        //step1:
        //step2:
        conn=ConnectionPool.connectDB();
       //step3: Write SQL Query select
       Users2Bean x=new Users2Bean();
        String sql="select * from users2 where lid='"+id+"'";
      try {
          //step4: Create an Object of Statement
          Statement stmt=conn.createStatement();
          //step5: Call executeQuery method
          ResultSet rs=stmt.executeQuery(sql);
          //step6: Extract data from the ResultSet and add into ArrayList
               
          while(rs.next()){
         
              //step1: Fetch data from resultSet and Set Into the Bean
              x.setLid(rs.getInt("lid"));
                x.setName(rs.getString("name"));
                x.setUsername(rs.getString("username"));
                x.setPassword(rs.getString("password"));
                x.setEmail(rs.getString("email"));
                x.setMobile(rs.getString("mobile"));
                
             
              //step2: add bean object into list
             
          }
          //step7: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(Users2DAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return x;
}


    public static void main(String[] args) {
        //1. call registerUser()
        Users2Bean ub=new Users2Bean();
            Users2DAO ud=new Users2DAO(); 
//     ub.setLid(102);
//         ub.setName("Manshi Yadav");
//       ub.setUsername("Manshi12");
//        ub.setPassword("1555");
//        ub.setEmail("m@gmail.com");
//        ub.setMobile("9587504739");
////        
//        ////Users2DAO ud=new Users2DAO();
//        int r=ud.registerUser(ub);
//        if(r>0){
//            System.out.println("Registration success");
//        }else{
//            System.out.println("Registration fail");
//        }
//        

// FIND BY ID METHOD CALLED
//        Users2DAO sd = new Users2DAO();
//        Users2Bean s = sd.findById(104);
//
//      
//            System.out.println("\t"+s.getSid()+"\t"+s.getName()+"\t"+s.getUsername()+"\t"+s.getPassword()+"\t"+s.getEmail()+"\t"+s.getMobile()).
//
int r=ud.loginCheck("Rohit124", "1235");
if(r>0){
    System.out.println("Login Success");
}else{
    System.out.println("Login Fail");
}
    }
}







