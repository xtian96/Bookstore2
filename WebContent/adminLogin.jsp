<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Login Page</title>
</head>



<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="login.css" type="text/css">


<div id="container">

<body>

	<div style="background: url(https://www.heet.org.uk/wp-content/uploads/2016/06/gradient-background-26046-26731-hd-wallpapers.jpg.png) !important" class="jumbotron">
		<div class="text-center">
			<font size="5" color=#ebf1ed> <h1>Administrator Login</h1> </font>
		</div>
	</div>
	
			<nav class="navbar sticky-top navbar-light bg-dark">
			<ul class="nav">
				<li><a class="navbar-brand" href="login.jsp">Home</a></li>
			</ul>
		</nav>	  
	
	
		<form name="loginform" action="AdminController" method="post" onsubmit="return loginValidate()" > 
	
	<font size="3" color="red">${message}</font>
	
	
	<table border = "0">
	
 	 <tr align="left" valign="top">
 	 <br>	<td>Username:</td>
  			<td><input type="text" name ="user" id="user"/></td>
	 </tr>
	 
	 <tr align="left" valign="top">
	   <td>Password:</td>
 		 <td><input type="password" name ="pass" id="pass"/></td>
 	 </tr>
 	 
 	 
 	 <tr align="left" valign="top">
		<td> 
  			<input type="submit" name="submit" value="login" /> 
  		</td>
  	</tr>
	
	</table>
	</form>
</body>
</div>
</html>