<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   //1.  Create cookies for first and last names.      
   Cookie firstName = new Cookie("first_name", request.getParameter("first_name"));
   Cookie lastName = new Cookie("last_name", request.getParameter("last_name"));
   
   //2. Set expiry date after 24 Hrs for both the cookies.
   firstName.setMaxAge(60*60*24); 
   lastName.setMaxAge(60*60*24); 
   
   //3. Add both the cookies in the response header.
   response.addCookie( firstName );
   response.addCookie( lastName );
   
   // to delete/expire cookie simply set time to 0
   firstName.setMaxAge(0); // now this cookie will expire
%>
    <center>
         <h1>Reading Cookies</h1>
      </center>
      <%
         Cookie cookie = null;
         Cookie[] cookies = null;
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
            out.println("<h2> Found Cookies Name and Value</h2>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               out.print("Name : " + cookie.getName( ) + ",  ");
               out.print("Value: " + cookie.getValue( )+" <br/>");
            }
         } else {
            out.println("<h2>No cookies founds</h2>");
         }
      %>
   
   

</body>
</html>