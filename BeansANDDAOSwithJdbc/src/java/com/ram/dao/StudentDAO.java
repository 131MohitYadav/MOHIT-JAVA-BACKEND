
package com.ram.dao;

import com.ram.bean.StudentBean;
import com.ram.utility.ConnectionPool;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
        int total=sb.getP()+sb.getC()+sb.getM()+sb.getH()+sb.getE();
        float per=total/5.0f;
        String sql="insert into student(sid,name,enroll,p,c,m,h,e,per,total) values('"+sb.getSid()+"','"+sb.getName()+"','"+sb.getEnroll()+"','"+sb.getP()+"','"+sb.getC()+"','"+sb.getM()+"','"+sb.getH()+"','"+sb.getE()+"','"+per+"','"+total+"')";
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
        int total=sb.getP()+sb.getC()+sb.getM()+sb.getH()+sb.getE();
        float per=total/5.0f;
        String sql="update student set name='"+sb.getName()+"',enroll='"+sb.getEnroll()+"',p='"+sb.getP()+"',c='"+sb.getC()+"', m='"+sb.getM()+"',h='"+sb.getH()+"',e='"+sb.getE()+"',total='"+total+"',per='"+per+"'  where sid='"+sb.getSid()+"'";
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
              x.setP(rs.getInt("p"));
              x.setC(rs.getInt("c"));
              x.setM(rs.getInt("m"));
              x.setH(rs.getInt("h"));
              x.setE(rs.getInt("e"));
              x.setTotal(rs.getInt("total"));
              x.setPer(rs.getFloat("per"));
             
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
              x.setP(rs.getInt("p"));
              x.setC(rs.getInt("c"));
              x.setM(rs.getInt("m"));
              x.setH(rs.getInt("h"));
              x.setE(rs.getInt("e"));
              x.setTotal(rs.getInt("total"));
              x.setPer(rs.getFloat("per"));
             
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

        
        sb.setC(67);
        sb.setE(78);
        sb.setEnroll("011Cs1");
        sb.setH(67);
        sb.setM(66);
        sb.setP(55);
        sb.setName("XXXXX");
        sb.setSid(143);
       //// StudentDAO sd=new StudentDAO();
        int result=sd.addStudent(sb);
        if(result>0){
            System.out.println("Student Added Success");
        }else{
            System.out.println("Student  Not Added");
        }



     // update method called
     
     
             //// StudentBean sb=new StudentBean();
//        sb.setC(67);
//       sb.setE(78);
//        sb.setEnroll("106");
//        sb.setH(67);
//        sb.setM(55);
//       sb.setName("MUSKAN");
//        sb.setP(66);
//        sb.setSid(105);
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
//            System.out.println("\t"+s.getSid()+"\t"+s.getName()+"\t"+s.getEnroll()+"\t"+s.getP()+"\t"+s.getC()+"\t"+s.getM()+"\t"+s.getH()+"\t"+s.getE()+"\t"+s.getTotal()+"\t"+s.getPer());

    }
}








//
///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
//// */
//
//package com.ram.dao;
//////
//import com.ram.bean.StudentBean;
//import com.ram.utility.ConnectionPool;
//import java.sql.*;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//////
//////
//
//public class StudentDAO {
// static Connection conn;
//public int addStudent(StudentBean sb){
//  int r=0;
//////    //step1:
//////    //step2: 
//  conn=ConnectionPool.connectDB();
//////    //step3: Wrtite SQL Query
//   int total=sb.getP()+sb.getC()+sb.getE()+sb.getH()+sb.getM();
//   float per=total/5.0f;
//   String sql="insert into student values('"+sb.getSid()+"','"+sb.getName()+"','"+sb.getEnroll()+"','"+sb.getP()+"','"+sb.getC()+"','"+sb.getM()+"','"+sb.getH()+"','"+sb.getE()+"','"+total+"','"+per+"')";
//    try {
//////         //step4: Create Object of Statement
//      Statement stmt=conn.createStatement();
//////         //step5: call executeUpdate()
//       r=stmt.executeUpdate(sql);
//////         //step6: close the connection
//      conn.close();
//     } catch (SQLException ex) {
//      Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
//  }
// return r;
//} 
//   public static void main(String[] args) {
//     StudentBean sb=new StudentBean();
//      sb.setC(67);
//       sb.setE(78);
//        sb.setEnroll("123CS123");
//      sb.setH(67);
//       sb.setM(55);
//        sb.setName("Kartik");
//        sb.setP(66);
//        sb.setSid(10022);
//        StudentDAO sd=new StudentDAO();
//        int result=sd.addStudent(sb);
//        if(result>0){
//            System.out.println("Student Added Success");
//        }else{
//            System.out.println("Student Not Added");
//        }
//    }
//}


//
////
////package com.ram.dao;
////
////
////import com.ram.bean.StudentBean;
////import com.ram.utility.ConnectionPool;
////import java.sql.*;
////import java.util.logging.Level;
////import java.util.logging.Logger;
////
////
////public class StudentDAO {
//// static Connection conn;

////public int updateStudent(StudentBean sb){
////    int r=0;
////   //step1:
////   //step2: 
////   conn=ConnectionPool.connectDB();
////   //step3: Wrtite SQL Query
////    int total=sb.getP()+sb.getC()+sb.getE()+sb.getH()+sb.getM();
////   float per=total/5.0f;
////   String sql="update student set name = '"+sb.getName()+"',enroll = '"+sb.getEnroll()+"',p ='"+sb.getP()+"', c ='"+sb.getC()+"',m ='"+sb.getM()+"', h ='"+sb.getH()+"', e ='"+sb.getE()+"',total ='"+total+"', per='"+per+"' where sid ='"+sb.getSid()+"'";
////     try {
////        //step4: Create Object of Statement
////        Statement stmt=conn.createStatement();
////        //step5: call executeUpdate()
////        r=stmt.executeUpdate(sql);
////       //step6: close the connection
////        conn.close();
////    } catch (SQLException ex) {
////        Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
////     }
////   return r;
////} 
////    public static void main(String[] args) {
////        StudentBean sb=new StudentBean();
////        sb.setC(67);
////       sb.setE(78);
////        sb.setEnroll("123CS123");
////        sb.setH(67);
////        sb.setM(55);
////       sb.setName("Monisha");
////        sb.setP(66);
////        sb.setSid(105);
////        StudentDAO sd=new StudentDAO();
////        int result=sd.updateStudent(sb);
////       if(result>0){
////           System.out.println("Student update Success");
////       }else{
////           System.out.println("Student Not Added");
////        }
////    }
////}
//

//
//import com.ram.bean.StudentBean;
//import com.ram.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//public class StudentDAO {
//    static Connection conn;
//
//    // Delete Student by ID (Fixed SQL Injection & Connection Handling)
//    public int deleteStudent(int sid) {
//        int r = 0;
//        try {
//            conn = ConnectionPool.connectDB();
//            String sql = "DELETE FROM student WHERE sid = ?";
//            PreparedStatement pstmt = conn.prepareStatement(sql);
//            pstmt.setInt(1, sid);
//            
//            r = pstmt.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            try {
//                if (conn != null) conn.close(); // Always close connection
//            } catch (SQLException ex) {
//                Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//        return r;
//    }
//    
//    
//public int updateStudent(StudentBean sb){
//    int r=0;
//   //step1:
//   //step2: 
//   //conn=ConnectionPool.connectDB();
//   //step3: Wrtite SQL Query
//    int total=sb.getP()+sb.getC()+sb.getE()+sb.getH()+sb.getM();
//   float per=total/5.0f;
//   String sql="update student set name = '"+sb.getName()+"',enroll = '"+sb.getEnroll()+"',p ='"+sb.getP()+"', c ='"+sb.getC()+"',m ='"+sb.getM()+"', h ='"+sb.getH()+"', e ='"+sb.getE()+"',total ='"+total+"', per='"+per+"' where sid ='"+sb.getSid()+"'";
//     try {
//        //step4: Create Object of Statement
//        Statement stmt=conn.createStatement();
//        //step5: call executeUpdate()
//        r=stmt.executeUpdate(sql);
//       //step6: close the connection
//        conn.close();
//    } catch (SQLException ex) {
//        Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
//     }
//   return r;
//}
//
//    public StudentBean findById(int id){
//       // conn = ConnectionPool.connectDB();
//        // <StudentBean> list = new ArrayList<StudentBean>();
//        StudentBean x =new StudentBean();
//        // step 3 ; write sql query select
//        String sql = "select * from student where sid = '"+id+"'";
//        try{
//            // step 4: create an object of statment
//            
//            Statement  stmt = conn.createStatement();
//            
//            // step 5: call execute query
//            ResultSet rs = stmt.executeQuery(sql);
//            // step : 6 extract dat from the REsultset and add into arraylist
//            
//            while( rs.next()){
//
//                
//                // step 1 : fetch dat from resulset and set into the bean 
//                x.setSid(rs.getInt("sid"));
//                x.setName(rs.getString("name"));
//                x.setEnroll(rs.getString("enroll"));
//                x.setP(rs.getInt("p"));
//                x.setC(rs.getInt("c"));
//                x.setM(rs.getInt("m"));
//                x.setH(rs.getInt("h"));
//                x.setE(rs.getInt("e"));
//                x.setTotal(rs.getInt("total"));
//                x.setPer(rs.getFloat("per"));
//                
//
//                     
//            }
//            
//            // step 7 : close the connection
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return x;
//    }
//
//    // Fetch All Students (Fixed Connection Handling)
//    public ArrayList<StudentBean> findAll() {
//        ArrayList<StudentBean> list = new ArrayList<>();
//        try {
//            conn = ConnectionPool.connectDB(); // Ensure new connection
//            String sql = "SELECT * FROM student";
//            Statement stmt = conn.createStatement();
//            ResultSet rs = stmt.executeQuery(sql);
//
//            while (rs.next()) {
//                StudentBean x = new StudentBean();
//                x.setSid(rs.getInt("sid"));
//                x.setName(rs.getString("name"));
//                x.setEnroll(rs.getString("enroll"));
//                x.setP(rs.getInt("p"));
//                x.setC(rs.getInt("c"));
//                x.setM(rs.getInt("m"));
//                x.setH(rs.getInt("h"));
//                x.setE(rs.getInt("e"));
//                x.setTotal(rs.getInt("total"));
//                x.setPer(rs.getFloat("per"));
//
//                list.add(x);
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            try {
//                if (conn != null) conn.close(); // Always close connection
//            } catch (SQLException ex) {
//                Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//        return list;
//    }
//
//    public static void main(String[] args) {
//      StudentDAO sd = new StudentDAO();
////        
////        // Test Delete Function
////        int result = sd.deleteStudent(1001);
////        if (result > 0) {
////            System.out.println("Student deleted successfully.");
////        } else {
////            System.out.println("Student not found.");
////        }
//
//        // Test Find All Function
//        ArrayList<StudentBean> students = sd.findAll();
//        for (StudentBean s : students) {
//            System.out.println("\t" + s.getSid() + "\t" + s.getName() + "\t" + s.getEnroll() + "\t" + s.getP() + "\t" + s.getC() + "\t" + s.getM() + "\t" + s.getH() + "\t" + s.getE() + "\t" + s.getTotal() + "\t" + s.getPer());
//            
//            // update method called
//              StudentBean sb=new StudentBean();
//        sb.setC(67);
//       sb.setE(78);
//        sb.setEnroll("123CS123");
//        sb.setH(67);
//        sb.setM(55);
//       sb.setName("Monisha");
//        sb.setP(66);
//        sb.setSid(105);
//       // StudentDAO sd=new StudentDAO();
//        int result=sd.updateStudent(sb);
//       if(result>0){
//           System.out.println("Student update Success");
//       }else{
//           System.out.println("Student Not Added");
//        }
       
       // find by id method called
       
        // 4 . call finall method
//        
//    
//        

                 
//        }
//    }
//}


//import com.ram.bean.StudentBean;
//import com.ram.utility.ConnectionPool;
//import java.sql.*;
////import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//class StudentDAO{
//    static Connection conn;
//    public StudentBean findById(int id){
//        conn = ConnectionPool.connectDB();
//        // <StudentBean> list = new ArrayList<StudentBean>();
//        StudentBean x =new StudentBean();
//        // step 3 ; write sql query select
//        String sql = "select * from student where sid = '"+id+"'";
//        try{
//            // step 4: create an object of statment
//            
//            Statement  stmt = conn.createStatement();
//            
//            // step 5: call execute query
//            ResultSet rs = stmt.executeQuery(sql);
//            // step : 6 extract dat from the REsultset and add into arraylist
//            
//            while( rs.next()){
//
//                
//                // step 1 : fetch dat from resulset and set into the bean 
//                x.setSid(rs.getInt("sid"));
//                x.setName(rs.getString("name"));
//                x.setEnroll(rs.getString("enroll"));
//                x.setP(rs.getInt("p"));
//                x.setC(rs.getInt("c"));
//                x.setM(rs.getInt("m"));
//                x.setH(rs.getInt("h"));
//                x.setE(rs.getInt("e"));
//                x.setTotal(rs.getInt("total"));
//                x.setPer(rs.getFloat("per"));
//                
//
//                     
//            }
//            
//            // step 7 : close the connection
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return x;
//    }
//    public static void main(String[] args){
//        // 4 . call finall method
//        
//        StudentDAO sd = new StudentDAO();
//        StudentBean s = sd.findById(104);
//
//      
//            System.out.println("\t"+s.getSid()+"\t"+s.getName()+"\t"+s.getEnroll()+"\t"+s.getP()+"\t"+s.getC()+"\t"+s.getM()+"\t"+s.getH()+"\t"+s.getE()+"\t"+s.getTotal()+"\t"+s.getPer());
//        
//    }
//}




