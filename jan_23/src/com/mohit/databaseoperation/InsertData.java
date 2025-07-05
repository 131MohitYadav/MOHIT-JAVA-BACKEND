/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mohit.databaseoperation;
import java.sql.*;

/**
 *
 * @author yadav
 */
public class InsertData {
    
    public static void main(String args[]) throws ClassNotFoundException,SQLException{
        
        // step 1 : Register the driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // step 2 : create the connection
String url="jdbc:mysql://localhost:3306/jain_20";
String un="root";
String ps="Mohit@#1234";
Connection conn=DriverManager.getConnection(url, un, ps);

//step3: Write Sql insert query
int sid=107;
String name="Rohit";
String enroll="126CS3";
int p=71;
int c=78;
int m=79;
int h=63;
int e=74;
int total=p+c+m+h+e;
float per=total/5.0f;

String sql = "insert into student values('"+sid+"','"+name+"','"+enroll+"','"+p+"','"+c+"','"+m+"','"+h+"','"+e+"','"+total+"','"+per+"')";

        //step4: create an object of Statement
Statement stmt=conn.createStatement();
//step5: call executeUpdate() method
int r=stmt.executeUpdate(sql);
//step6: close the connection
conn.close();
if(r>0){
System.out.println("Data insertion success");
}else{
System.out.println("Data Insertion Fail");
}

        
    }
    
}
