package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.ram.dao.StudentDAO;
import com.ram.bean.StudentBean;

public final class findstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Search Student</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <h2>Search Student</h2>\n");
      out.write("\n");
      out.write("    <!-- Search Form -->\n");
      out.write("    <form method=\"post\">\n");
      out.write("        <label for=\"sid\">Enter Student ID:</label>\n");
      out.write("        <input type=\"text\" id=\"sid\" name=\"sid\" required>\n");
      out.write("        <input type=\"submit\" value=\"Search\">\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("    <hr>\n");
      out.write("\n");
      out.write("    ");

        // Retrieve the Student ID from the request
        String sidStr = request.getParameter("sid");

        if (sidStr != null && !sidStr.isEmpty()) {
            try {
                int sid = Integer.parseInt(sidStr);

                // Call findById() method
                StudentDAO studentDAO = new StudentDAO();
                StudentBean student = studentDAO.findById(sid);

                // If student exists (check if sid is not 0)
                if (student.getSid() != 0) {
    
      out.write("\n");
      out.write("                <h3>Student Details</h3>\n");
      out.write("                <table border=\"1\">\n");
      out.write("                    <tr><th>Student ID</th><td>");
      out.print( student.getSid() );
      out.write("</td></tr>\n");
      out.write("                    <tr><th>Name</th><td>");
      out.print( student.getName() );
      out.write("</td></tr>\n");
      out.write("                    <tr><th>Enrollment</th><td>");
      out.print( student.getEnroll() );
      out.write("</td></tr>\n");
      out.write("                  \n");
      out.write("                </table>\n");
      out.write("    ");

                } else {
                    out.println("<p style='color:red;'>Student Not Found!</p>");
                }
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Invalid Student ID! Please enter a number.</p>");
            }
        }
    
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
