import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;  // IMPORTANT!
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S4") // This maps the servlet to the /S4 URL
public class S4 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head><title>Result</title></head>");
            out.println("<body>");
            try {
                int num1 = Integer.parseInt(request.getParameter("n1"));
                int num2 = Integer.parseInt(request.getParameter("n2"));
                int sum = num1 + num2;

                out.println("<h1>Addition is: " + sum + "</h1>");
            } catch (NumberFormatException e) {
                out.println("<h1>Invalid input! Please enter numbers only.</h1>");
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
