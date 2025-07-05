package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>STUDENT SIGN UP HERE</title>\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                font-family: Arial, sans-serif;\n");
      out.write("                background-color: #f4f4f4;\n");
      out.write("                display: flex;\n");
      out.write("                justify-content: center;\n");
      out.write("                align-items: center;\n");
      out.write("                height: 100vh;\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("            .form {\n");
      out.write("                width: 360px;\n");
      out.write("                background: rgba(0, 0, 0, 0.8);\n");
      out.write("                padding: 20px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                text-align: center;\n");
      out.write("                color: white;\n");
      out.write("                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n");
      out.write("            }\n");
      out.write("            .form h2 {\n");
      out.write("                background: white;\n");
      out.write("                color: black;\n");
      out.write("                padding: 10px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                transition: 0.4s;\n");
      out.write("            }\n");
      out.write("            .form h2:hover {\n");
      out.write("                background: orange;\n");
      out.write("            }\n");
      out.write("            .form input {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 8px;\n");
      out.write("                margin-top: 15px;\n");
      out.write("                border: none;\n");
      out.write("                border-bottom: 1px solid orange;\n");
      out.write("                background: transparent;\n");
      out.write("                color: white;\n");
      out.write("                font-size: 16px;\n");
      out.write("            }\n");
      out.write("            .btnn {\n");
      out.write("                width: 100%;\n");
      out.write("                background: orange;\n");
      out.write("                padding: 10px;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                cursor: pointer;\n");
      out.write("                color: white;\n");
      out.write("                font-weight: bold;\n");
      out.write("                margin-top: 20px;\n");
      out.write("                border: none;\n");
      out.write("            }\n");
      out.write("            .btnn:hover {\n");
      out.write("                background: white;\n");
      out.write("                color: orange;\n");
      out.write("            }\n");
      out.write("            .form a {\n");
      out.write("                \n");
      out.write("                text-decoration: none;\n");
      out.write("                color: white;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .form a{\n");
      out.write("                color:blue;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"form\">\n");
      out.write("            <h2> Student Signup Here</h2>\n");
      out.write("            <form action=\"saveuser.jsp\" method=\"post\">\n");
      out.write("                <input type=\"text\" name=\"uid\" placeholder=\"Enter Login Id\" required>\n");
      out.write("                <input type=\"text\" name=\"name\" placeholder=\"Enter Name\" required>\n");
      out.write("                <input type=\"text\" name=\"un\" placeholder=\"Enter Username\" required>\n");
      out.write("                <input type=\"password\" name=\"ps\" placeholder=\"Enter Password\" required>\n");
      out.write("                <input type=\"text\" name=\"email\" placeholder=\"Enter email\">\n");
      out.write("                <input type=\"number\" name=\"mobile\" placeholder=\"Enter Mobile No\">\n");
      out.write("                <button type=\"submit\" class=\"btnn\">Sign Up</button>\n");
      out.write("            </form>\n");
      out.write("            <p class=\"link\"> Already have You Account?</p>\n");
      out.write("            <button class=\"btnn\"><a  href=\"Index.jsp\">Sign In</a></button>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
