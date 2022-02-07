<%@page import="com.BookPriceGenerator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stock Quote</title>
</head>
<body>
	<jsp:useBean id="stock" class="com.BookPriceGenerator" />
	<jsp:setProperty property="*" name="stock" />
	<%!BookPriceGenerator stockServer = new BookPriceGenerator();%>
	Requested symbol:
	<%=(request.getParameter("symbol"))%>
	<br> Price:
	<%=(stockServer.getPrice(request.getParameter("symbol")))%>
</body>
</html>