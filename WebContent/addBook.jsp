<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>
</head>
<body>
	
	<%out.print("Hello!"); %>
	<%= new java.util.Date() %>
	
	
	<%! int number1, number2; %>
	
	<%
		DbManager db = new DbManager();
		Connection conn = (Connection) db.getConnection();
		if(conn == null)
			out.print("failed");
		else
			out.print("succeeded");
	
	%>
	<form name="addBookForm" action="AddBook" method="post" onsubmit="return loginValidate()">
	<br>
	${message}<br>
	${successMessage}<br>
	Book Name: <input type="text" name="title"><br>
	
	Author: <input type="text" name="author"><br>
	
	ISBN: <input type="text" name="ISBN"><br>
	<!--Price: <input type="number" name="price" id="price"><br>-->
	<input type="submit" name="submit" value="submit"><br>
	<a href="welcome.jsp">Homepage</a>
	</form>
	
</body>
</html>