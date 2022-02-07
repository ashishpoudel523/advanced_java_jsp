<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>
</head>
<body>
	 <%@page import="com.dao.UserDao,com.bean.*,java.util.*"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <h1>Users List</h1>
    <%
    List<User> list = UserDao.getal1Records();
    request.setAttribute("list", list);
   %>
    <table border="1" width="90%">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Passwordk/th>
            <th> Email</th>
            <th>Sex</th>
            <th>Country</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${list}" var= "u">
            <tr>
                <td>${u.getId()}</td>
                <td>S{u.getName ()}</td>
                <td>S{u.getPassword ()}</td>
                <td>${u.getEmail()}</td>
                <td>S{u.getSex()}</td>
                <td>${u.getCountry(0}</td>
                <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
                <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br />
   <a href="adduserform.jsp">Add New User</a>
</body>
</html>