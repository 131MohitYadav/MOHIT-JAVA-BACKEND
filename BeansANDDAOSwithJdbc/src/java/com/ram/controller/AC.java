/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ram.controller;

import com.ram.bean.StudentBean;
import com.ram.dao.StudentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yadav
 */
public class AC extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AC</title>");            
            out.println("</head>");
            out.println("<body>");
               int Sid = Integer.parseInt(request.getParameter("sid"));
            String Name = request.getParameter("name");
            String Enroll = request.getParameter("enroll");
            int P = Integer.parseInt(request.getParameter("p"));
            int C = Integer.parseInt(request.getParameter("c"));
            int M = Integer.parseInt(request.getParameter("m"));
            int H = Integer.parseInt(request.getParameter("h"));
            int E = Integer.parseInt(request.getParameter("e"));
            
            out.println("<h1> SID:  " + Sid + "</h1>");
             out.println("<h1> NAME:  " + Name + "</h1>");
            out.println("<h1> " + Enroll + "</h1>");
            out.println("<h1> P: " +P+ "</h1>");
            out.println("<h1> C:  " + C + "</h1>");
            out.println("<h1> M: " + M + "</h1>");
             out.println("<h1> H: " + H + "</h1>");
              out.println("<h1> E: " + E + "</h1>");
             // STEP 3 -> CREATE OBJECT OF STUDENTBEAN
             StudentBean sb = new StudentBean();
             // STEP 4 -> SET ALL DAT INTO STUDENTBEAN OBJECT
             sb.setSid(Sid);
             sb.setName(Name);
             sb.setEnroll(Enroll);
             sb.setP(P);
             sb.setC(C);
             sb.setM(M);
             sb.setH(H);
             sb.setE(E);
              
             // STEP 5 -> CREATE AN OBJECT OF STUDENTDAO
             StudentDAO sd = new StudentDAO();
             int r = sd.addStudent(sb);
             if  ( r > 0){
                 out.println("Student Added Success");
             }
             else{
                 out.println("Student Not Added");
             }
               
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
