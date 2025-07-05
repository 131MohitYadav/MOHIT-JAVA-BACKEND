/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohit.databaseoperation;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author yadav
 */
public class FindById {
    
     public static void main(String args[]) throws ClassNotFoundException,
           SQLException{
            // STEP 1 -> REGISTER THE DRIVER
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // STEP 2 -> CREATE THE CONNECTION
            String url = "jdbc:mysql://localhost:3306/jain_20";
            String userName = "root";
            String password = "Mohit@#1234";
            Connection conn = DriverManager.getConnection(url,userName,password);
            
            // STEP 3 -> WRITE SQL QUERY
            int id = 104;
            String sql = "select * from student where sid = '"+id+"'";
            
            // STEP 4 -> CREATE OBJECT OF STATEMENT
            Statement stmt = conn.createStatement();
            
            // STEP 5 -> CALL EXECUTEqUERY() AND PROCESS RESULTSET DATA
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                
                System.out.println("\t"+rs.getInt("sid")+"\t"+rs.getString("name")+"\t"+rs.getString("enroll")+
                        "\t"+rs.getInt("p")+"\t"+rs.getInt("c")+"\t"+rs.getInt("m")+"\t"+rs.getInt("h")+"\t"+
                        rs.getInt("e")+"\t"+rs.getInt("total")+"\t"+rs.getFloat("per"));
        }
                // STEP 6 -> close the Connection
                conn.close();
                
            }            
        }
    
    

    



    
    
    

