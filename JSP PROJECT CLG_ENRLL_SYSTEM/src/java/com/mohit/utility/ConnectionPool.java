/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohit.utility;

/**
 *
 * @author yadav
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class ConnectionPool {
  static Connection conn;

    public static Connection connectDB(){
      try {
          //step1: REGISTER THE DRIVER
          Class.forName("com.mysql.cj.jdbc.Driver");
          //STEP2: CREATE THE CONNECTION
          String url="jdbc:mysql://localhost:3306/1april";
          String userName="root";
          String password="Mohit@#1234";
          conn=DriverManager.getConnection(url, userName, password);
          System.out.println("Database Connection Success");
      } catch (ClassNotFoundException ex) {
          Logger.getLogger(ConnectionPool.class.getName()).log(Level.SEVERE, null, ex);
      } catch (SQLException ex) {
          Logger.getLogger(ConnectionPool.class.getName()).log(Level.SEVERE, null, ex);
      }
      return conn;  
    }
    public static void main(String[] args) {
        connectDB();
    }
}
