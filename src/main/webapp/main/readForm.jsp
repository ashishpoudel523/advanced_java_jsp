<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Using GET Method to Read Form Data</title>
</head>
<body>
	<center>
		<h1>Using GET Method to Read Form Data</h1>
		<ul>
			<li><p>
					<b>First Name:</b>
					<%=request.getParameter("first_name")%>
				</p></li>
			<li><p>
					<b>Last Name:</b>
					<%=request.getParameter("last_name")%>
					<%-- <% session.setAttribute("userName", request.getParameter("first_name")); %>
					<a href="anotherPage.jsp">Go to another page</a> --%>
				</p></li>
		</ul>
		
		<h1>Reading Checkbox Data</h1>
		<ul>
		<li><p><b>Maths Flag:</b>
		<%= request.getParameter("maths")%>
		</p></li>
		<li><p><b>Physics Flag:</b>
		<%= request.getParameter("physics")%>
		</p></li>
		<li><p><b>Chemistry Flag:</b>
		<%= request.getParameter("chemistry")%>
		</p></li>
		</ul>
</body>
</html>