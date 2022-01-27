<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action = "readForm.jsp"  method="POST">
	First Name: <input type = "text"  name = "first name" autocomplete="off"> <br>
	Last Name: <input type = "text"  name = "last name" autocomplete="off"> <br>
	
	
	<input type = "checkbox"  name = "maths" checked= "checked" > Maths <br>
	<input type = "checkbox"  name = "physics"> Physics <br>
	<input type = "checkbox"  name = "chemistry" checked = "checked"> Chemistry <br>
	
	
	Choose Gender: 
	M: <input type="radio" name = "test" value="1">
	F: <input type="radio" name = "test" value="1">
	<br>
	<input type = "submit"  value= "submit">   <br><br>
	</form>
</body>
</html>