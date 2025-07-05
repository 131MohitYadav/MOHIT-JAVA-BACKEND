import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/RF") // IMPORTANT: Maps to the URL
public class RF extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            String name = request.getParameter("name");
            String lastname = request.getParameter("lastname");
            String pass = request.getParameter("password");           // ✅
            String repass = request.getParameter("repassword");      // ✅
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String address = request.getParameter("address");        // ✅
            String gender = request.getParameter("gender");           // ✅
            String country = request.getParameter("country");         // ✅
            String[] sports = request.getParameterValues("sports");  // ✅
            String dob = request.getParameter("dob");                 // ✅

            out.println("<!DOCTYPE html>");
            out.println("<html><head><title>Form Output</title></head><body>");
            out.println("<h1>Form Data:</h1>");
            out.println("<h2>Name: " + name + "</h2>");
            out.println("<h2>Last Name: " + lastname + "</h2>");
            out.println("<h2>Password: " + pass + "</h2>");
            out.println("<h2>Re-enter Password: " + repass + "</h2>");
            out.println("<h2>Email: " + email + "</h2>");
            out.println("<h2>Mobile: " + mobile + "</h2>");
            out.println("<h2>Address: " + address + "</h2>");
            out.println("<h2>Gender: " + gender + "</h2>");
            out.println("<h2>Country: " + country + "</h2>");
            out.println("<h2>Date of Birth: " + dob + "</h2>");
            
            out.println("<h2>Sports:</h2>");
            if (sports != null) {
                out.println("<ul>");
                for (String s : sports) {
                    out.println("<li>" + s + "</li>");
                }
                out.println("</ul>");
            } else {
                out.println("<p>No sports selected</p>");
            }

            out.println("</body></html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
