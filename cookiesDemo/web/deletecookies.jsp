 <%
  Cookie cookie = null;
 Cookie[] cookies = null;
 cookies = request.getCookies();
 if (cookies != null) {
  for (int i = 0; i < cookies.length; i++) {
   cookie = cookies[i];
   if ((cookie.getName()).compareTo("username-cookie") == 0) {
  cookie.setMaxAge(0);
  response.addCookie(cookie);
  out.print("Deleted cookie: " + cookie.getName() + "<br/>");
   }
   
   out.print("Name : " + cookie.getName() + ",  ");
   out.print("Value: " + cookie.getValue() + " <br/>");
  }
 }
 %>
</body>
</html>