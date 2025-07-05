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
public class UpdateData {
    
    public static void main(String args[]) throws ClassNotFoundException,SQLException{
        
        // step 1 : Register the driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // step 2 : create the connection
String url="jdbc:mysql://localhost:3306/jain_20";
String un="root";
String ps="Mohit@#1234";
Connection conn=DriverManager.getConnection(url, un, ps);

//step3: Write Sql insert query
int sid=104;
String name="Manish";
String enroll="123CS4";
int p=91;
int c=48;
int m=49;
int h=60;
int e=59;
int total=p+c+m+h+e;
float per=total/5.0f;

String sql = "update student set name"
        + "='"+name+"',enroll='"+enroll+"',p='"+p+"',c='"+c+"',m='"+m+"'"
        + ",h='"+h+"',e='"+e+"',total='"+total+"',per='"+per+"' where sid='"+sid+"'";

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
