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
public class EditForm extends HttpServlet {

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
            out.println("<title>Servlet EditForm</title>");            
            out.println("</head>");
            out.println("<body>");
            
           //step1: Fetch ID from the request
            int sid = Integer.parseInt(request.getParameter("sid"));

            //step2: Create Object of StudentDAO
            StudentDAO sd = new StudentDAO();
            //Step3: Call findById(sid) method via dao  object
            StudentBean sb = sd.findById(sid);
            //step4: Print Result
               out.println("<form action='UpdateController'>");
             out.println("<table  width='60%'>");
                 out.println("<tr>");
                     out.println("<td>SID: </td>");
                     out.println("<td><input type='text' name='sid' value="+sb.getSid()+"></td>");
                 out.println("</tr>");
                  out.println("<tr>");
                     out.println("<td>NAME: </td>");
                     out.println("<td><input type='text' name='name' value="+sb.getName()+"></td>");
                 out.println("</tr>");
                  out.println("<tr>");
                     out.println("<td>ENROLLMENT: </td>");
                     out.println("<td><input type='text' name='enroll' value="+sb.getEnroll()+"></td>");
                 out.println("</tr>");
                 out.println(" <tr>");
                     out.println("<td>Physics: </td>");
                    out.println(" <td><input type='text' name='p' value="+sb.getP()+"></td>");
                out.println(" </tr>");
                  out.println("<tr>");
                    out.println(" <td>Chemistry: </td>");
                    out.println(" <td><input type='text' name='c' value="+sb.getC()+"></td>");
                 out.println("</tr>");
                  out.println("<tr>");
                     out.println("<td>English: </td>");
                     out.println("<td><input type='text' name='m' value="+sb.getM()+"></td>");
                 out.println("</tr>");
                  out.println("<tr>");
                     out.println("<td>Maths: </td>");
                     out.println("<td><input type='text' name='h' value="+sb.getH()+"></td>");
                 out.println("</tr>");
                  out.println("<tr>");
                    out.println(" <td>Hindi: </td>");
                     out.println("<td><input type='text' name='e' value="+sb.getE()+"></td>");
                 out.println("</tr>");
                  out.println("<tr>");
                      out.println("<td>&nbsp;</td>");
                      out.println("<td><input type='submit' value='Update Student'></td>");
                out.println(" </tr>");
             out.println("</table>");
         out.println("</form>");
         


            //out.println("<h1>SID:  " + sid + "</h1>");
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
