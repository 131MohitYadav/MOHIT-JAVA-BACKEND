/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
public class user extends HttpServlet {

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
            out.println("<title>Servlet user</title>");            
            out.println("</head>");
            out.println("<body>");
            
          String firstName = request.getParameter("name");
            String lastName = request.getParameter("lastname");
            String p = request.getParameter("ps");  // Fixed: Use String for passwords
            String cp = request.getParameter("reps");  // Fixed: Use String
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");  // Fixed: Use String for mobile
            String address = request.getParameter("ad");
            String gender = request.getParameter("gender");
            String dob = request.getParameter("dob");
            String country = request.getParameter("ctr");

            // Retrieving multiple checkbox values
            String[] sports = request.getParameterValues("sports");

            // Displaying the received data
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Registration Details</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h2>Registration Details</h2>");
            out.println("<p>First Name: " + firstName + "</p>");
             out.println("<p>Last Name: " + lastName + "</p>");
            

            
            out.println("<p>Password: " + p + "</p>");
             out.println("<p>ConfirmPassword: " + cp + "</p>");
            out.println("<p>Email: " + email + "</p>");
            
            out.println("<p>Mobile: " + mobile + "</p>");
            out.println("<p>Address: " + address + "</p>");
            out.println("<p>Gender: " + gender + "</p>");
            out.println("<p>Date of Birth: " + dob + "</p>");
            out.println("<p>Country: " + country + "</p>");

            // Handling sports selection safely
            out.print("<p>Sports: ");
            if (sports != null) {
                for (String sp : sports) {
                    out.print(sp + " ");
                }
            } else {
                out.print("None");
            }
            out.println("</p>");

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
