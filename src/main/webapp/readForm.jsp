<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Using POST method to Read Form Data</title>
</head>
<body>
	
		<!-- <h1>Using GET MEthod to read Form Data</h1> -->
		<h1>Using POST MEthod to read Form Data</h1>
		<ul>
			<li><p>
			<b>First Name:</b>
			<%= request.getParameter("first name")%>
			</p></li>
			
			<li><p>
			<b>Last Name:</b>
			<%=request.getParameter("last name") %>
			</p></li>
		</ul>
		
		<h1> Reading Checkbox Data</h1>
		<ul>
		<li><p><b>Maths Flag:</b>
		<%= request.getParameter("maths")%>
		</p>
		</li>
		
		<li><p><b>Physics Flag:</b>
		<%= request.getParameter("physics") %>
		</p>
		</li>
		
		<li><p><b>Chemistry Flag:</b>
		<%= request.getParameter("chemistry") %>
		</p>
		</li>
		</ul>
</body>
</html>