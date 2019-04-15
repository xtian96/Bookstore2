<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="login.css" type="text/css">


<html>

	<%-- This will display the name of the page user is on --%>
<head>
	<script type="text/javascript" src="script.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login Page</title>
</head>


<%-- This is the jumbotron, which displays the header and background color surrounding header --%>
<div style="background: url(https://www.heet.org.uk/wp-content/uploads/2016/06/gradient-background-26046-26731-hd-wallpapers.jpg.png) !important" class="jumbotron">
	<div class="text-center">
		<font size="5" color=#ebf1ed> <h1>Welcome to Group 9 Bookstore </h1> </font>
		<font size="3" color=#ebf1ed> <p>"A book is a dream that you can hold in your hand" - Neil Gaiman</p> </font>
	</div>
</div>
	
	
<div id="container">
	<body>	
		<%-- This creates a "sticky" navbar, which always displays on the page no matter what --%>
		<nav class="navbar sticky-top navbar-light bg-dark">
			<ul class="nav">
				<li><a class="navbar-brand" href="register.jsp">Account Registration</a></li>
				<li><a class="navbar-brand" href="browse.jsp"> Browse</a></li>
				<li><a class="navbar-brand" href="adminLogin.jsp"> Admin Portal</a></li>
			</ul>
		</nav>	  
	

	<div class="text-center">
		<div id="content">
			<br> <%out.print("Please sign-in or register below.."); %> <br/>
		</div>
	
		<%-- This calls the controller to validate the login method later --%>
		<form name="loginform" action="LoginController" method="post" onsubmit="return loginValidate()" > <br>
			
			
		<%-- Each "tr" function centers the text, and displays "..." with an input box --%>
 	 	<tr align="center" valign="top">
 	 		<td>Username:</td>
  			<td><input type="text" name ="username" id="username"/></td>
  			<br><br>
		</tr>
		 
		 <tr align="center" valign="top">
		 	<td>Password:</td>
 		 	<td><input type="password" name ="password" id="password"/></td>
 		 	<br><br>
 		 </tr>

		<tr align="center" valign="top">
			<td> 
  			<input type="submit" name="submit" value="login" /></td>
  		</tr>
  		<br><br>
  	
  		<tr align="center" valign="top">
			<font size="2"><td><a href="register.jsp">Don't have an account? Register here!</a></td></font>  
 		</tr>

 		</form> 
 	
 	</div>
 	
</body>
</div>
</html>
