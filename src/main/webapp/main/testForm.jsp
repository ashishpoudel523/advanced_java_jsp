<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<form action="readForm.jsp" method="POST">
		First Name: <input type="text" name="first_name"> <br />
		LastName: <input type="text" name="last_name" />
			
		
		<input type="checkbox" name="maths" checked="checked" /> Maths 
		<input type="checkbox" name="physics" />Physics 
		<input type="checkbox" name="chemistry" checked="checked" />Chemistry 
		<input type="submit" value="SubmitForm" />
		
		Choose Gender
		M: <input type="radio" name="test" value="1" /> 
		F: <input type="radio" name="test" value="2" /> 
		
	</form>
</body>
</html>