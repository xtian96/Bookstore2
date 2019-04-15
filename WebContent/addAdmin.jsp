<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Admin Page</title>
</head>

<link rel="stylesheet" href="login.css" type="text/css">


<div id="container">



<body>
	
	<%out.print("Hello!"); %>
	
	
	<%
		DbManager db = new DbManager();
		Connection conn = (Connection) db.getConnection();
		if(conn == null)
			out.print("connection failed");
		else
			out.print("Please enter the information for the Admin you would like to add or remove..");
	%>
	
	
	<form name="addAdminForm" action="addAdmin" method="post" onsubmit="return loginValidate()">
	<br>
	${message}<br>
	${successMessage}<br>
	
	
	
	<table border = "0">
	
 	 <tr align="left" valign="top">
 	 	<td>First Name:</td>
  			<td><input type="text" name="title" /></td>
	 </tr>
	 
	  <tr align="left" valign="top">
 	 	<td>Last Name:</td>
  			<td><input type="text" name="title" /></td>
	 </tr>
	 <br>
	 
	 
	 <tr align="left" valign="top">
	   <td>Username:</td>
 		 <td><input type="text" name ="author"/></td>
 	 </tr>
 	 
 	 <tr align="left" valign="top">
	   <td>Password</td>
 		 <td><input type="text" name ="ISBN"/></td>
 	 </tr>

	 <tr align="left" valign="top">
 	 	<td>Re-enter Password:</td>
  			<td><input type="text" name="title" /></td>
	 </tr>
	
	<tr align="left" valign="top">
		<td> 
  			<input type="submit" name="submit" value="submit" /> 
  			<input type="submit" name="submit" value="remove" /> 
  		</td>
  	</tr>
	

 	</table>
	
	</form>
</div>
</body>
</html>