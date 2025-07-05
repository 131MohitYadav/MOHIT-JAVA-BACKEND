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
//import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.logging.Level;
//import java.util.logging.Logger;
////
////
//public class EmpDAO {
// static Connection conn;
//public int addEmp(EmpBean eb){
//    int r=0;
////    //step1:
////    //step2: 
//    conn=ConnectionPool.connectDB();
//    //step3: Wrtite SQL Query
////    int total=sb.getP()+sb.getC()+sb.getE()+sb.getH()+sb.getM();
////    float per=total/5.0f;
//    String sql="insert into emp values('"+eb.getEmpno()+"','"+eb.getEname()+"','"+eb.getJob()+"','"+eb.getMgr()+"','"+eb.getHiredate()+"','"+eb.getSal()+"','"+eb.getComm()+"','"+eb.getDeptno()+"')";
//     try {
////         //step4: Create Object of Statement
//         Statement stmt=conn.createStatement();
////         //step5: call executeUpdate()
//         r=stmt.executeUpdate(sql);
////         //step6: close the connection
//        conn.close();
//     } catch (SQLException ex) {
//        Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//     }
//   return r;
//} 
//    public static void main(String[] args) {
//        EmpBean eb=new EmpBean();
//        eb.setEmpno(105);
//        eb.setJob("HR");
//       eb.setMgr(18);
//        eb.setHiredate("2025-02-10");
//        eb.setEname("Kartik");
//        eb.setSal((float) 42000.54);
//        eb.setComm((float) 1650.25);
//        eb.setDeptno(30);
//        EmpDAO ed=new EmpDAO();
//        int result=ed.addEmp(eb);
//        if(result>0){
//           System.out.println("Emp Added Success");
//       }else{
//            System.out.println("Emp Not Added");
//        }
//    }
//}

//
//package com.task.DAO;
//
//import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//public class EmpDAO {
// static Connection conn;
//public int UpdateEmp(EmpBean eb){
//    int r=0;
////    //step1:
////    //step2: 
//    conn=ConnectionPool.connectDB();
//    //step3: Wrtite SQL Query
////    int total=sb.getP()+sb.getC()+sb.getE()+sb.getH()+sb.getM();
////    float per=total/5.0f;
//    String sql="update emp set ename = '"+eb.getEname()+"',job = '"+eb.getJob()+"',mgr = '"+eb.getMgr()+"', hiredate = '"+eb.getHiredate()+"',sal = '"+eb.getSal()+"',comm ='"+eb.getComm()+"',deptno ='"+eb.getDeptno()+"' where empno = '"+eb.getEmpno()+"'";
//     try {
////         //step4: Create Object of Statement
//         Statement stmt=conn.createStatement();
////         //step5: call executeUpdate()
//         r=stmt.executeUpdate(sql);
////         //step6: close the connection
//        conn.close();
//     } catch (SQLException ex) {
//        Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//     }
//   return r;
//} 
//    public static void main(String[] args) {
//        EmpBean eb=new EmpBean();
//        eb.setEmpno(105);
//        eb.setJob("HR");
//       eb.setMgr(18);
//        eb.setHiredate("2025-02-10");
//        eb.setEname("MONISHA");
//        eb.setSal((float) 42000.54);
//        eb.setComm((float) 1650.25);
//        eb.setDeptno(30);
//        EmpDAO ed=new EmpDAO();
//        int result=ed.UpdateEmp(eb);
//        if(result>0){
//           System.out.println("Emp data update Success");
//       }else{
//            System.out.println("Emp data not updated Not");
//        }
//    }
//}
//
//
//
//package com.task.DAO;
//
//import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//public class EmpDAO {
// static Connection conn;
//public int DeleteEmp(int empno){
//    int r=0;
////    //step1:
////    //step2: 
//    conn=ConnectionPool.connectDB();
//    //step3: Wrtite SQL Query
////    int total=sb.getP()+sb.getC()+sb.getE()+sb.getH()+sb.getM();
////    float per=total/5.0f;
//    String sql="delete from emp where empno = '"+empno+"'";
//     try {
////         //step4: Create Object of Statement
//         Statement stmt=conn.createStatement();
////         //step5: call executeUpdate()
//         r=stmt.executeUpdate(sql);
////         //step6: close the connection
//        conn.close();
//     } catch (SQLException ex) {
//        Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//     }
//   return r;
//} 
//    public static void main(String[] args) {
//        EmpBean eb=new EmpBean();
//       // eb.setEmpno(105);
//        eb.setJob("HR");
//       eb.setMgr(18);
//        eb.setHiredate("2025-02-10");
//        eb.setEname("MONISHA");
//        eb.setSal((float) 42000.54);
//        eb.setComm((float) 1650.25);
//        eb.setDeptno(30);
//        EmpDAO ed=new EmpDAO();
//        int result=ed.DeleteEmp(105);
//        if(result>0){
//           System.out.println("Emp data deleted Success");
//       }else{
//            System.out.println("Emp data not deleted");
//        }
//    }
//}
//
//
//
//import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//class EmpDAO{
//    static Connection conn;
//   public ArrayList<EmpBean> findAll(){
//        conn = ConnectionPool.connectDB();
//       ArrayList<EmpBean> list = new ArrayList<EmpBean>();
////        // step 3 ; write sql query select
//       String sql = "select * from emp";
//       try{
////            // step 4: create an object of statment
////            
//           Statement  stmt = conn.createStatement();
////            
////            // step 5: call execute query
//            ResultSet rs = stmt.executeQuery(sql);
////            // step : 6 extract dat from the REsultset and add into arraylist
////            
//            while( rs.next()){
//                EmpBean x =new EmpBean();
////                
////                // step 1 : fetch dat from resulset and set into the bean 
//               x.setEmpno(rs.getInt("empno"));
//                x.setEname(rs.getString("ename"));
//                x.setJob(rs.getString("job"));
//                x.setMgr(rs.getInt("mgr"));
//                x.setHiredate(rs.getString("hiredate"));
//                x.setSal(rs.getFloat("sal"));
//                x.setComm(rs.getFloat("comm"));
//                x.setDeptno(rs.getInt("deptno"));
//                   // step 2 : add bean object into list 
//               list.add(x);
////                     
//           }
////            
////            // step 7 : close the connection
//            conn.close();
//        } catch (SQLException ex) {
//           Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return list;
//   }
//    public static void main(String[] args){
////        // 4 . call finall method
////        
//       EmpDAO ed = new EmpDAO();
//        ArrayList<EmpBean> al = ed.findAll();
//       for( EmpBean s: al){
//           System.out.println("\t"+s.getEmpno()+"\t"+s.getEname()+"\t"+s.getJob()+"\t"+s.getMgr()+"\t"+"\t"+s.getHiredate()+"\t"+s.getSal()+"\t"+s.getComm()+"\t"+s.getDeptno());
//        }
//   }
//}
//
//
//
//import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//class EmpDAO{
//    static Connection conn;
//   public EmpBean findById(int id){
//        conn = ConnectionPool.connectDB();
//  //     ArrayList<EmpBean> list = new ArrayList<EmpBean>();
//   EmpBean x =new EmpBean();
//
////        // step 3 ; write sql query select
//       String sql = "select * from emp where empno = '"+id+"'";
//       try{
////            // step 4: create an object of statment
////            
//           Statement  stmt = conn.createStatement();
////            
////            // step 5: call execute query
//            ResultSet rs = stmt.executeQuery(sql);
////            // step : 6 extract dat from the REsultset and add into arraylist
////            
//            while( rs.next()){
//              
////                
////                // step 1 : fetch dat from resulset and set into the bean 
//               x.setEmpno(rs.getInt("empno"));
//                x.setEname(rs.getString("ename"));
//                x.setJob(rs.getString("job"));
//                x.setMgr(rs.getInt("mgr"));
//                x.setHiredate(rs.getString("hiredate"));
//                x.setSal(rs.getFloat("sal"));
//                x.setComm(rs.getFloat("comm"));
//                x.setDeptno(rs.getInt("deptno"));
//                   // step 2 : add bean object into list 
//               
////                     
//           }
////            
////            // step 7 : close the connection
//            conn.close();
//        } catch (SQLException ex) {
//           Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return x;
//   }
//    public static void main(String[] args){
////        // 4 . call finall method
////        
//       EmpDAO ed = new EmpDAO();
//        EmpBean s = ed.findById(104);
//
//           System.out.println("\t"+s.getEmpno()+"\t"+s.getEname()+"\t"+s.getJob()+"\t"+s.getMgr()+"\t"+"\t"+s.getHiredate()+"\t"+s.getSal()+"\t"+s.getComm()+"\t"+s.getDeptno());
//        
//   }
//}
//
//
//
//
//import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//class EmpDAO{	
//    static Connection conn;
//   public ArrayList<EmpBean> findAllByDeptno(int dpt){
//        conn = ConnectionPool.connectDB();
//       ArrayList<EmpBean> list = new ArrayList<EmpBean>();
////        // step 3 ; write sql query select
//       String sql = "select * from emp where deptno = '"+dpt+"'";
//       try{
////            // step 4: create an object of statment
////            
//           Statement  stmt = conn.createStatement();
////            
////            // step 5: call execute query
//            ResultSet rs = stmt.executeQuery(sql);
////            // step : 6 extract dat from the REsultset and add into arraylist
////            
//            while( rs.next()){
//                EmpBean x =new EmpBean();
////                
////                // step 1 : fetch dat from resulset and set into the bean 
//               x.setEmpno(rs.getInt("empno"));
//                x.setEname(rs.getString("ename"));
//                x.setJob(rs.getString("job"));
//                x.setMgr(rs.getInt("mgr"));
//                x.setHiredate(rs.getString("hiredate"));
//                x.setSal(rs.getFloat("sal"));
//                x.setComm(rs.getFloat("comm"));
//                x.setDeptno(rs.getInt("deptno"));
//                   // step 2 : add bean object into list 
//               list.add(x);
////                     
//           }
////            
////            // step 7 : close the connection
//            conn.close();
//        } catch (SQLException ex) {
//           Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return list;
//   }
//    public static void main(String[] args){
////        // 4 . call finall method
////        
//       EmpDAO ed = new EmpDAO();
//        ArrayList<EmpBean> al = ed.findAllByDeptno(10);
//       for( EmpBean s: al){
//           System.out.println("\t"+s.getEmpno()+"\t"+s.getEname()+"\t"+s.getJob()+"\t"+s.getMgr()+"\t"+"\t"+s.getHiredate()+"\t"+s.getSal()+"\t"+s.getComm()+"\t"+s.getDeptno());
//        }
//   }
//}

//	
//import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//class EmpDAO{
//    static Connection conn;
//   public EmpBean findByJob(String job){
//        conn = ConnectionPool.connectDB();
//  //     ArrayList<EmpBean> list = new ArrayList<EmpBean>();
//   EmpBean x =new EmpBean();
//
////        // step 3 ; write sql query select
//       String sql = "select * from emp where job = '"+job+"'";
//       try{
////            // step 4: create an object of statment
////            
//           Statement  stmt = conn.createStatement();
////            
////            // step 5: call execute query
//            ResultSet rs = stmt.executeQuery(sql);
////            // step : 6 extract dat from the REsultset and add into arraylist
////            
//            while( rs.next()){
//              
////                
////                // step 1 : fetch dat from resulset and set into the bean 
//               x.setEmpno(rs.getInt("empno"));
//                x.setEname(rs.getString("ename"));
//                x.setJob(rs.getString("job"));
//                x.setMgr(rs.getInt("mgr"));
//                x.setHiredate(rs.getString("hiredate"));
//                x.setSal(rs.getFloat("sal"));
//                x.setComm(rs.getFloat("comm"));
//                x.setDeptno(rs.getInt("deptno"));
//                   // step 2 : add bean object into list 
//               	
////                     
//           }
////            
////            // step 7 : close the connection
//            conn.close();
//        } catch (SQLException ex) {
//           Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return x;
//   }
//    public static void main(String[] args){
////        // 4 . call finall method
////        
//       EmpDAO ed = new EmpDAO();
//        EmpBean s = ed.findByJob("manager");
//
//           System.out.println("\t"+s.getEmpno()+"\t"+s.getEname()+"\t"+s.getJob()+"\t"+s.getMgr()+"\t"+"\t"+s.getHiredate()+"\t"+s.getSal()+"\t"+s.getComm()+"\t"+s.getDeptno());
//        
//   }
//}
//
//
//

//
//
//import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//class EmpDAO{	
//    static Connection conn;
//    private static float sal;
//   public ArrayList<EmpBean> findEmployeeInAsc(float sal){
//        conn = ConnectionPool.connectDB();
//       ArrayList<EmpBean> list = new ArrayList<EmpBean>();
////        // step 3 ; write sql query select
//       String sql = "select * from emp order by sal desc";
//       try{
////            // step 4: create an object of statment
////            
//           Statement  stmt = conn.createStatement();
////            
////            // step 5: call execute query
//            ResultSet rs = stmt.executeQuery(sql);
////            // step : 6 extract dat from the REsultset and add into arraylist
////            
//            while( rs.next()){
//                EmpBean x =new EmpBean();
////                
////                // step 1 : fetch dat from resulset and set into the bean 
//               x.setEmpno(rs.getInt("empno"));
//                x.setEname(rs.getString("ename"));
//                x.setJob(rs.getString("job"));
//                x.setMgr(rs.getInt("mgr"));
//                x.setHiredate(rs.getString("hiredate"));
//                x.setSal(rs.getFloat("sal"));
//                x.setComm(rs.getFloat("comm"));
//                x.setDeptno(rs.getInt("deptno"));
//                   // step 2 : add bean object into list 
//               list.add(x);
////                     
//           }
////            
////            // step 7 : close the connection
//            conn.close();
//        } catch (SQLException ex) {
//           Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return list;
//   }
//    public static void main(String[] args){
////        // 4 . call finall method
////        
//       EmpDAO ed = new EmpDAO();
//        ArrayList<EmpBean> al = ed.findEmployeeInAsc(sal);
//        al.forEach((s) -> {
//            System.out.println("\t"+s.getEmpno()+"\t"+s.getEname()+"\t"+s.getJob()+"\t"+s.getMgr()+"\t"+"\t"+s.getHiredate()+"\t"+s.getSal()+"\t"+s.getComm()+"\t"+s.getDeptno());
//        });
//   }
//} 

	;
//import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger

//
//class EmpDAO{
//    static Connection conn;
//   public EmpBean findById(int id){
//        conn = ConnectionPool.connectDB();
//  //     ArrayList<EmpBean> list = new ArrayList<EmpBean>();
//   EmpBean x =new EmpBean();
//
////        // step 3 ; write sql query select
//       String sql = "select * from emp where empno = '"+id+"'";
//       try{
////            // step 4: create an object of statment
////            
//           Statement  stmt = conn.createStatement();
////            
////            // step 5: call execute query
//            ResultSet rs = stmt.executeQuery(sql);
////            // step : 6 extract dat from the REsultset and add into arraylist
////            
//            while( rs.next()){
//              
////                
////                // step 1 : fetch dat from resulset and set into the bean 
//               x.setEmpno(rs.getInt("empno"));
//                x.setEname(rs.getString("ename"));
//                x.setJob(rs.getString("job"));
//                x.setMgr(rs.getInt("mgr"));
//                x.setHiredate(rs.getString("hiredate"));
//                x.setSal(rs.getFloat("sal"));
//                x.setComm(rs.getFloat("comm"));
//                x.setDeptno(rs.getInt("deptno"));
//                   // step 2 : add bean object into list 
//               	
////                     	
//           }
////            
////            // step 7 : close the connection
//            conn.close();
//        } catch (SQLException ex) {
//           Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return x;
//   }
//    public static void main(String[] args){
////        // 4 . call finall method
////        
//       EmpDAO ed = new EmpDAO();
//        EmpBean s = ed.findById(104);
//
//           System.out.println("\t"+s.getEmpno()+"\t"+s.getEname()+"\t"+s.getJob()+"\t"+s.getMgr()+"\t"+"\t"+s.getHiredate()+"\t"+s.getSal()+"\t"+s.getComm()+"\t"+s.getDeptno());
//        
//   }
//}
//
//
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//        
// import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//class EmpDAO {
//    static Connection conn;
//
//    // Method to get total salary
//    public double SumSalaryByJob(String job) {
//        conn = ConnectionPool.connectDB();
//        double totalSalary = 0;
//
//        String sql = "SELECT SUM(sal) as total from emp  where job = '"+job+"'";
//        try {
//            Statement stmt = conn.createStatement();
//            ResultSet rs = stmt.executeQuery(sql);
//
//            if (rs.next()) {
//                totalSalary = rs.getFloat("total"); // Fetch sum(sal)
//            }
//
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return totalSalary;
//    }
//
//    public static void main(String[] args) {
//        EmpDAO ed = new EmpDAO();
//        double totalSal = ed.SumSalaryByJob("HR");
//        System.out.println("Total Salary: " + totalSal);
//    }
//}

//
// import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//class EmpDAO {
//    static Connection conn;
//
//    // Method to get total salary
//    public double AvgSalary() {
//        conn = ConnectionPool.connectDB();
//        float totalSalary = 0;
//
//        String sql = "SELECT AVG(sal) AS total FROM emp";
//        try {
//            Statement stmt = conn.createStatement();
//            ResultSet rs = stmt.executeQuery(sql);
//
//            if (rs.next()) {
//                totalSalary = rs.getFloat("total"); // Fetch sum(sal)
//            }
//
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return totalSalary;
//    }
//
//    public static void main(String[] args) {
//        EmpDAO ed = new EmpDAO();
//        double totalSal = ed.AvgSalary();
//        System.out.println("Total Salary: " + totalSal);
//    }
//}
//

//
//     
// import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//	
//class EmpDAO {
//    static Connection conn;
//
//    // Method to get total salary
//    public double AvgSalaryByJob(int deptno) {
//        conn = ConnectionPool.connectDB();
//        double totalSalary = 0;
//
//        String sql = "SELECT job,AVG(sal) as avg_salary  from emp  where deptno = '"+deptno+"'";
//        try {
//            Statement stmt = conn.createStatement();
//            ResultSet rs = stmt.executeQuery(sql);
//            while (rs.next()) { // Iterate through multiple rows
//                String job = rs.getString("job");
//                double avgSalary = rs.getDouble("avg_salary");
//                System.out.println( job+": "+ avgSalary);
//            }
//
//
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return totalSalary;
//    }
//
//    public static void main(String[] args) {
//        EmpDAO ed = new EmpDAO();
//        ed.AvgSalaryByJob(30);
//        
//    }
//}
//


//     
// import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//	
//class EmpDAO {
//    static Connection conn;
//
//    // Method to get total salary
//    public double FindMaxSalary() {
//        conn = ConnectionPool.connectDB();
//        double totalSalary = 0;
//
//        String sql = "SELECT MAX(sal) as max_salary  from emp where sal > 35000";
//        try {
//            Statement stmt = conn.createStatement();
//            ResultSet rs = stmt.executeQuery(sql);
//            if (rs.next()) { // Iterate through multiple rows
//                
//                double maxSalary = rs.getDouble("max_salary");
//                System.out.println("HighestSalary: "+ maxSalary);
//            }
//
//
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return totalSalary;
//    }
//
//    public static void main(String[] args) {
//        EmpDAO ed = new EmpDAO();
//        ed.FindMaxSalary();
//        
//        
//    }
//}
//
//
//        
//  import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//
//class EmpDAO {
//    static Connection conn;
//
//    // Method to get employees with salary > 36000
//    public void getEmployeesWithLowSalary() {
//        conn = ConnectionPool.connectDB();
//        
//        String sql = "SELECT * FROM emp WHERE sal < 40000"; // Query to get employees with high salary
//        
//        try {
//            PreparedStatement stmt = conn.prepareStatement(sql); // Use PreparedStatement
//            ResultSet rs = stmt.executeQuery();
//
//           
//
//            while (rs.next()) { 
//                int empId = rs.getInt("empno");      
//                String name = rs.getString("ename"); 
//                String job = rs.getString("job");    
//                int mgr = rs.getInt("mgr");
//                String hiredate = rs.getString("hiredate");
//                double salary = rs.getDouble("sal"); 
//                double comm = rs.getDouble("comm");
//                int dpt = rs.getInt("deptno");
//                
//
//                System.out.println(empId + "\t" + name + "\t" + job + mgr + "\t"+ hiredate+"\t" + salary + "t"+comm + "\t"+dpt);
//            }
//
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//
//    public static void main(String[] args) {
//        EmpDAO ed = new EmpDAO();
//        ed.getEmployeesWithLowSalary(); 
//    }
//}
//

//
//import com.task.bean.EmpBean;
//import com.task.utility.ConnectionPool;
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//	
//class EmpDAO {
//    static Connection conn;
//
//    // Method to get total salary
//    public void CountEmp() {
//        conn = ConnectionPool.connectDB();
//        
//
//        String sql = "select count(*) as cnt from emp";
//        try {
//            Statement stmt = conn.createStatement();
//            ResultSet rs = stmt.executeQuery(sql);
//            if (rs.next()) { // Iterate through multiple rows
//                
//                int cnt = rs.getInt("cnt");
//                System.out.println("Count number of emp: "+ cnt);
//            }
//
//
//            conn.close();
//        } catch (SQLException ex) {
//            Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        
//    }
//
//    public static void main(String[] args) {
//        EmpDAO ed = new EmpDAO();
//        ed.CountEmp();
//        
//        	
//    }
//}
//

     
 
import com.task.utility.ConnectionPool;
import java.sql.*;

import java.util.logging.Level;
import java.util.logging.Logger;
	
class EmpDAO {
    static Connection conn;

    // Method to get total salary
    public double countEmpByJob(String job) {
        conn = ConnectionPool.connectDB();
        double totalSalary = 0;

        String sql = "select count(*) as jb from emp where job = '"+job+"'";
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) { // Iterate through multiple rows
                String cnt = rs.getString("jb");
              //  double avgSalary = rs.getDouble("avg_salary");
                System.out.println( cnt);
            }


            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(EmpDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return totalSalary;
    }

    public static void main(String[] args) {
        EmpDAO ed = new EmpDAO();
        ed.countEmpByJob("HR");
        
    }
}

