package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.ram.bean.StudentBean;
import java.util.ArrayList;
import com.ram.dao.StudentDAO;

public final class viewstudent_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>All Student Data</h1>\n");
      out.write("     <h1><a style=\"text-decoration: none;\" href=\"addStudent.jsp\">Add New Student </a></h1>\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("            <tr>\n");
      out.write("                <th>SID</th>\n");
      out.write("                <th>NAME</th>\n");
      out.write("                <th>ENROLL</th>\n");
      out.write("                <th>P</th>\n");
      out.write("                <th>C</th>\n");
      out.write("                <th>M</th>\n");
      out.write("                <th>H</th>\n");
      out.write("                <th>E</th>\n");
      out.write("                <th>Total</th>\n");
      out.write("                <th>Percentage</th>\n");
      out.write("                <th>EDIT</th>\n");
      out.write("                <th>DELETE</th>\n");
      out.write("              \n");
      out.write("            </tr>\n");
      out.write("            ");

            //step1: Create an Object of StudentDAO class
            StudentDAO sd=new StudentDAO();
            ArrayList<StudentBean> all=sd.findAll();
            
            for(StudentBean sb:all){
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(sb.getSid() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(sb.getName() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(sb.getEnroll() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(sb.getP() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(sb.getC() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(sb.getM() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(sb.getH() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(sb.getE() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(sb.getTotal() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print(sb.getPer() );
      out.write("</td>\n");
      out.write("                <td><a href=\"editform.jsp?sid=");
      out.print(sb.getSid() );
      out.write("\">EDIT</a></td>\n");
      out.write("                <th><a href=\"delete.jsp?sid=");
      out.print(sb.getSid() );
      out.write("\">DELETE</a></th>\n");
      out.write("              \n");
      out.write("            </tr>\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("\n");
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
