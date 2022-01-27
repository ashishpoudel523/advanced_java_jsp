<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*"%>
<%
	// Get session creation time.. .
	Date createTime = new Date(session.getCreationTime());
	// Get last access time of this web page. 
	Date lastAccessTime = new Date(session.getLastAccessedTime());
	
	String title = "Welcome Back to my website";
	
	Integer visitCount = new Integer(0);
	if(session.getAttribute("visitCount") == null){
		session.setAttribute("visitCount", visitCount);
		session.setAttribute("userId", "Ashish");
		session.setAttribute("userEmail", "ashishpoudel523@gmail.com");
	}
 // session has key-value pair 

	
	visitCount = (Integer) session.getAttribute("visitCount");
	visitCount = visitCount + 1;

	session.setAttribute("visitCount", visitCount);
%>
<html>
<head>
<title>Session Tracking</title>
</head>
<body>
	<center>
		<h1>Session Tracking</h1>
	</center>
	<table border="1rm" align="center" style=background-color:green>
		<tr >
			<th>Session info</th>
			<th>Value</th>
		</tr>
		<tr>
			<td>id</td>
			<td>
				<%
					out.print(session.getId());
				%>
			</td>
		</tr>
		<tr>
			<td>Creation Time</td>
			<td>
				<%
					out.print(createTime);
				%>
			</td>
		</tr>
		<tr>
			<td>Time of Last Access</td>
			<td>
				<%
					out.print(lastAccessTime);
				%>
			</td>
		</tr>

		<tr>
			<td>User ID</td>
			<td>
				<%
					out.print(session.getAttribute("userId"));
				%>
			</td>
		</tr>
		<tr>
			<td>Number of visits</td>
			<td>
				<%
					out.print(visitCount);
				%>
			</td>
		</tr>
	</table>
</body>
</html>
