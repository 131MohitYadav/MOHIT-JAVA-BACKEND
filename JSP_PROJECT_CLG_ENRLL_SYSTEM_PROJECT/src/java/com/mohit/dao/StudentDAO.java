
package com.mohit.dao;

import com.mohit.bean.StudentBean;
import com.mohit.utility.ConnectionPool;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class StudentDAO {
  static Connection conn;
    public int addStudent(StudentBean sb){
        //step1
        //step2
        conn=ConnectionPool.connectDB();
        //step3: Write SQL Query
       
        String sql="insert into student(sid,name,enroll,enrolld,dob,email,course,clg,city) values('"+sb.getSid()+"','"+sb.getName()+"','"+sb.getEnroll()+"','"+sb.getEnrolld()+"','"+sb.getDob()+"','"+sb.getEmail()+"','"+sb.getCourse()+"','"+sb.getClg()+"','"+sb.getCity()+"')";
        int r=0;
      try {
          //step4: Create Object of Statement
          Statement stmt=conn.createStatement();
          //step5: call executeUpdate()
          r=stmt.executeUpdate(sql);
          //step6: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return r;
    }
   
    public int updateStudent(StudentBean sb){
        //step1
        //step2
        conn=ConnectionPool.connectDB();
        //step3: Write SQL Query
        
        String sql="update student set name='"+sb.getName()+"',enroll='"+sb.getEnroll()+"',enrolld='"+sb.getEnrolld()+"',dob='"+sb.getDob()+"', email='"+sb.getEmail()+"',course='"+sb.getCourse()+"',clg='"+sb.getClg()+"',city='"+sb.getCity()+"'  where sid='"+sb.getSid()+"'";
        int r=0;
      try {
          //step4: Create Object of Statement
          Statement stmt=conn.createStatement();
          //step5: call executeUpdate()
          r=stmt.executeUpdate(sql);
          //step6: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return r;
    }
    public int deleteStudent(int sid){
        //step1:
        //step2:
        conn=ConnectionPool.connectDB();
        int r=0;
        //step3: Write SQL Query
        String sql="delete from student where sid='"+sid+"'";
      try {
          //step4: Create Object of Statement
          Statement stmt=conn.createStatement();
          //step5: call executeUpdate()
          r=stmt.executeUpdate(sql);
          //step6: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return r;
    }
   
    public ArrayList<StudentBean> findAll(){
        //step1:
        //step2:
        conn=ConnectionPool.connectDB();
        ArrayList<StudentBean> list=new ArrayList<StudentBean>();
        //step3: Write SQL Query select
        String sql="select * from student";
      try {
          //step4: Create an Object of Statement
          Statement stmt=conn.createStatement();
          //step5: Call executeQuery method
          ResultSet rs=stmt.executeQuery(sql);
          //step6: Extract data from the ResultSet and add into ArrayList
          while(rs.next()){
              StudentBean x=new StudentBean();
              //step1: Fetch data from resultSet and Set Into the Bean
             x.setSid(rs.getInt("sid"));
                x.setName(rs.getString("name"));
                x.setEnroll(rs.getString("enroll"));
                x.setEnrolld(rs.getString("enrolld"));
                x.setDob(rs.getString("dob"));
                x.setEmail(rs.getString("email"));
                x.setCourse(rs.getString("course"));
                x.setClg(rs.getString("clg"));
                x.setCity(rs.getString("city"));
              //step2: add bean object into list
              list.add(x);
          }
          //step7: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return list;
    }
     public StudentBean findById(int id){
        //step1:
        //step2:
        conn=ConnectionPool.connectDB();
       //step3: Write SQL Query select
       StudentBean x=new StudentBean();
        String sql="select * from student where sid='"+id+"'";
      try {
          //step4: Create an Object of Statement
          Statement stmt=conn.createStatement();
          //step5: Call executeQuery method
          ResultSet rs=stmt.executeQuery(sql);
          //step6: Extract data from the ResultSet and add into ArrayList
               
          while(rs.next()){
         
              //step1: Fetch data from resultSet and Set Into the Bean
              x.setSid(rs.getInt("sid"));
                x.setName(rs.getString("name"));
                x.setEnroll(rs.getString("enroll"));
                x.setEnrolld(rs.getString("enrolld"));
                x.setDob(rs.getString("dob"));
                x.setEmail(rs.getString("email"));
                x.setCourse(rs.getString("course"));
                x.setClg(rs.getString("clg"));
                x.setCity(rs.getString("city"));
             
              //step2: add bean object into list
             
          }
          //step7: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return x;
    }
     
     
      // ALL MAIN METHOD CALLED //
     
    public static void main(String[] args) {
        //4. call findAll Method
            StudentDAO sd=new StudentDAO();
            StudentBean sb=new StudentBean();
//ArrayList<StudentBean> al=sd.findAll();
//for(StudentBean s:al){
//    System.out.println("\t"+s.getSid()+"\t"+s.getName()+"\t"+s.getEnroll()+"\t"+s.getP()+"\t"+s.getC()+"\t"+s.getM()+"\t"+s.getH()+"\t"+s.getE()+"\t"+s.getTotal()+"\t"+s.getPer());
//}

            // ADD STUDENT METHOD CALLED

         sb.setSid(101);
        sb.setName("MOHIT");
        sb.setEnroll("0111CS221133");
        sb.setEnrolld("2025-01-01");
        sb.setDob("2000-01-01");
        sb.setEmail("m@example.com");
        sb.setCourse("CSE");
        sb.setClg("TIT-M");
        sb.setCity("New Delhi");
       //// StudentDAO sd=new StudentDAO();
        int result=sd.addStudent(sb);
        if(result>0){
            System.out.println("Student Added Success");
        }else{
            System.out.println("Student  Not Added");
        }



     // update method called
     
     
             //// StudentBean sb=new StudentBean();
//        sb.setSid(105);
//        sb.setName("XXXXX");
//        sb.setEnroll("011Cs1");
//        sb.setEnrolld("2025-01-01");
//        sb.setDob("2000-01-01");
//        sb.setEmail("xxxxx@example.com");
//        sb.setCourse("CSE");
//        sb.setClg("XYZ College");
//        sb.setCity("New Delhi");
//       // StudentDAO sd=new StudentDAO();
//        int result=sd.updateStudent(sb);
//       if(result>0){
//           System.out.println("Student update Success");
//       }else{
//           System.out.println("Student Not Added");
//        }


////3. Call deletestudent()
//StudentDAO sd=new StudentDAO();
//int x=sd.deleteStudent(101);
//if(x>0){
//    System.out.println("Data Deletion success");
//}else{
//    System.out.println("Data Deletion Fail");
//}

// FIND BY ID METHOD CALLED
//        StudentDAO sd = new StudentDAO();
//        StudentBean s = sd.findById(104);
//
//      
//            System.out.println("\t"+s.getSid()+"\t"+s.getName()+"\t"+s.getEnroll()+"\t"+s.getEnrolld()+"\t"+s.getDob()+"\t"+s.getEmail()+"\t"+s.getCourse()+"\t"+s.getClg()+"\t"+s.getCity());

    }
}



