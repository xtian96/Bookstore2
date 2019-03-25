<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>adminLogin</title>
</head>
<body>
	<%
		DbManager db = new DbManager();
		Connection conn = (Connection) db.getConnection();
		if(conn == null)
			out.print("failed");
		else
			out.print("succeeded");
	
	%>
	<br>
	Admin User: <input type="text" name="admin" id="admin"><br>
	Password: <input type="password" name ="password" id="password"><br>
	<input type="submit" name="submit" value="submit"><br>
</body>
</html>