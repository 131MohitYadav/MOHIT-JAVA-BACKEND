
package com.mohit.dao;

import com.mohit.bean.FacultyBean;
import com.mohit.utility.ConnectionPool;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class FacultyDAO {
  static Connection conn;
    public int addStudent(FacultyBean sb){
        //step1
        //step2
        conn=ConnectionPool.connectDB();
        //step3: Write SQL Query
       
        String sql="insert into faculty(fid,name,gender,dob,hiredate,email,dept,salary,desi) values('"+sb.getFid()+"','"+sb.getName()+"','"+sb.getGender()+"','"+sb.getDob()+"','"+sb.getHiredate()+"','"+sb.getEmail()+"','"+sb.getDept()+"','"+sb.getSalary()+"','"+sb.getDesi()+"')";
        int r=0;
      try {
          //step4: Create Object of Statement
          Statement stmt=conn.createStatement();
          //step5: call executeUpdate()
          r=stmt.executeUpdate(sql);
          //step6: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(FacultyDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return r;
    }
   
    public int updateStudent(FacultyBean sb){
        //step1
        //step2
        conn=ConnectionPool.connectDB();
        //step3: Write SQL Query
        
        String sql="update faculty set name='"+sb.getName()+"',gender='"+sb.getGender()+"',dob='"+sb.getDob()+"',hiredate='"+sb.getHiredate()+"', email='"+sb.getEmail()+"',dept='"+sb.getDept()+"',salary='"+sb.getSalary()+"',desi='"+sb.getDesi()+"'  where fid='"+sb.getFid()+"'";
        int r=0;
      try {
          //step4: Create Object of Statement
          Statement stmt=conn.createStatement();
          //step5: call executeUpdate()
          r=stmt.executeUpdate(sql);
          //step6: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(FacultyDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return r;
    }
    public int deleteFaculty(int fid){
        //step1:
        //step2:
        conn=ConnectionPool.connectDB();
        int r=0;
        //step3: Write SQL Query
        String sql="delete from faculty where fid='"+fid+"'";
      try {
          //step4: Create Object of Statement
          Statement stmt=conn.createStatement();
          //step5: call executeUpdate()
          r=stmt.executeUpdate(sql);
          //step6: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(FacultyDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return r;
    }
   
    public ArrayList<FacultyBean> findAll(){
        //step1:
        //step2:
        conn=ConnectionPool.connectDB();
        ArrayList<FacultyBean> list=new ArrayList<FacultyBean>();
        //step3: Write SQL Query select
        String sql="select * from faculty";
      try {
          //step4: Create an Object of Statement
          Statement stmt=conn.createStatement();
          //step5: Call executeQuery method
          ResultSet rs=stmt.executeQuery(sql);
          //step6: Extract data from the ResultSet and add into ArrayList
          while(rs.next()){
              FacultyBean x=new FacultyBean();
              //step1: Fetch data from resultSet and Set Into the Bean
             x.setFid(rs.getInt("fid"));
                x.setName(rs.getString("name"));
                x.setGender(rs.getString("gender"));
                x.setDob(rs.getString("dob"));
                x.setHiredate(rs.getString("hiredate"));
                x.setEmail(rs.getString("email"));
                x.setDept(rs.getString("dept"));
                x.setSalary(rs.getDouble("salary"));
                x.setDesi(rs.getString("desi"));
              //step2: add bean object into list
              list.add(x);
          }
          //step7: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(FacultyDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return list;
    }
     public FacultyBean findById(int id){
        //step1:
        //step2:
        conn=ConnectionPool.connectDB();
       //step3: Write SQL Query select
       FacultyBean x=new FacultyBean();
        String sql="select * from faculty where fid='"+id+"'";
      try {
          //step4: Create an Object of Statement
          Statement stmt=conn.createStatement();
          //step5: Call executeQuery method
          ResultSet rs=stmt.executeQuery(sql);
          //step6: Extract data from the ResultSet and add into ArrayList
               
          while(rs.next()){
         
              //step1: Fetch data from resultSet and Set Into the Bean
             
               x.setFid(rs.getInt("fid"));
                x.setName(rs.getString("name"));
                x.setGender(rs.getString("gender"));
                x.setDob(rs.getString("dob"));
                x.setHiredate(rs.getString("hiredate"));
                x.setEmail(rs.getString("email"));
                x.setDept(rs.getString("dept"));
                x.setSalary(rs.getDouble("salary"));
                x.setDesi(rs.getString("desi"));
              //step2: add bean object into list
             
          }
          //step7: Close the Connection
          conn.close();
      } catch (SQLException ex) {
          Logger.getLogger(FacultyDAO.class.getName()).log(Level.SEVERE, null, ex);
      }
       
        return x;
    }
     
     
      // ALL MAIN METHOD CALLED //
     
    public static void main(String[] args) {
        //4. call findAll Method
            FacultyDAO sd=new FacultyDAO();
            FacultyBean sb=new FacultyBean();
//ArrayList<StudentBean> al=sd.findAll();
//for(StudentBean s:al){
//    System.out.println("\t"+s.getSid()+"\t"+s.getName()+"\t"+s.getEnroll()+"\t"+s.getP()+"\t"+s.getC()+"\t"+s.getM()+"\t"+s.getH()+"\t"+s.getE()+"\t"+s.getTotal()+"\t"+s.getPer());
//}

            // ADD STUDENT METHOD CALLED

         sb.setFid(101);
        sb.setName("MOHIT YADAV");
        sb.setGender("M");
        sb.setDob("2025-01-08");
        sb.setHiredate("2016-01-09");
        sb.setEmail("m@example.com");
        sb.setDept("CSE");
        sb.setSalary(30000.23);
        sb.setDesi("Professor");
       //// StudentDAO sd=new StudentDAO();
        int result=sd.addStudent(sb);
        if(result>0){
            System.out.println("Faculty Added Success");
        }else{
            System.out.println("Faculty  Not Added");
        }



     // update method called
     
//     
//             //// FacultyBean sb=new FacultyBean();
// sb.setFid(101);
//        sb.setName("MOHIT YADAV");
//        sb.setGender("M");
//        sb.setDob("2025-01-08");
//        sb.setHiredate("2016-01-09");
//        sb.setEmail("m@example.com");
//        sb.setDept("CSE");
//        sb.setSalary(30000.23);
//        sb.setDesi("Professor");
//       // FacultyDAO sd=new FacultyDAO();
//        int result=sd.updateStudent(sb);
//       if(result>0){
//           System.out.println("Faculty update Success");
//       }else{
//           System.out.println("Faculty Not updated");
//        }


////3. Call deletestudent()
//FacultyDAO sd=new FacultyDAO();
//int x=sd.deleteStudent(104);
//if(x>0){
//    System.out.println("Data Deletion success");
//}else{
//    System.out.println("Data Deletion Fail");
//}

// FIND BY ID METHOD CALLED
//        FacultyDAO sd = new FacultyDAO();
//        FacultyBean s = sd.findById(104);
//
//      
//            System.out.println("\t"+s.getSid()+"\t"+s.getName()+"\t"+s.getGender()+"\t"+s.getDob()+"\t"+s.getHiredate()+"\t"+s.getEmail()+"\t"+s.getDept()+"\t"+s.getSalary()+"\t"+s.getDesi());

    }
}



