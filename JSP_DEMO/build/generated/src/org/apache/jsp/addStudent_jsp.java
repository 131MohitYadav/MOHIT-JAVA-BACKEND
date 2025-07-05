package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addStudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>Add Student</title>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("            background-color: lightgrey;\n");
      out.write("            text-align: center;\n");
      out.write("            margin: 50px;\n");
      out.write("        }\n");
      out.write("        .frm {\n");
      out.write("            margin: auto;\n");
      out.write("            width: 60%;\n");
      out.write("            border-radius: 15px;\n");
      out.write("        }\n");
      out.write("        table {\n");
      out.write("            margin: 20px auto;\n");
      out.write("            border-collapse: collapse;\n");
      out.write("            width: 80%;\n");
      out.write("            background-color: lightblue;\n");
      out.write("            border-radius: 15px;\n");
      out.write("            box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.2);\n");
      out.write("            overflow: hidden;\n");
      out.write("        }\n");
      out.write("        td {\n");
      out.write("            padding: 12px;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("        input[type=\"text\"] {\n");
      out.write("            width: 95%;\n");
      out.write("            padding: 10px;\n");
      out.write("            border: none;\n");
      out.write("            border-radius: 8px;\n");
      out.write("            box-shadow: inset 2px 2px 5px rgba(0, 0, 0, 0.2);\n");
      out.write("        }\n");
      out.write("        input[type=\"submit\"] {\n");
      out.write("            background-color: #007bff;\n");
      out.write("            color: white;\n");
      out.write("            padding: 12px;\n");
      out.write("            border: none;\n");
      out.write("            border-radius: 8px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            width: 100%;\n");
      out.write("            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);\n");
      out.write("            transition: 0.3s;\n");
      out.write("        }\n");
      out.write("        input[type=\"submit\"]:hover {\n");
      out.write("            background-color: #0056b3;\n");
      out.write("            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.4);\n");
      out.write("        }\n");
      out.write("        .message {\n");
      out.write("            color: green;\n");
      out.write("            font-size: 18px;\n");
      out.write("            font-weight: bold;\n");
      out.write("            margin-top: 20px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"frm\">\n");
      out.write("        <form action=\"save.jsp\" method=\"post\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>SID:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"sid\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>NAME:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"name\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>ENROLLMENT:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"enroll\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Physics:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"p\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Chemistry:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"c\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Maths:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"m\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Hindi:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"h\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>English:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"e\" required></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\"><input type=\"submit\" value=\"Add Student\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        ");
 
            String message = request.getParameter("message");
            if ("success".equals(message)) { 
        
      out.write("\n");
      out.write("            <div class=\"message\">Student Added Successfully! Redirecting to login...</div>\n");
      out.write("            <script>\n");
      out.write("                setTimeout(function() {\n");
      out.write("                    window.location.href = 'login.jsp';\n");
      out.write("                }, 2000);\n");
      out.write("            </script>\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
