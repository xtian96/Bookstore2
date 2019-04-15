<%@page import="db.DbManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Book Page</title>
</head>


<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="login.css" type="text/css">



<%-- This is the jumbotron, which displays the header and background color surrounding header --%>
<div style="background: url(https://www.heet.org.uk/wp-content/uploads/2016/06/gradient-background-26046-26731-hd-wallpapers.jpg.png) !important" class="jumbotron">
	<div class="text-center">
		<font size="5" color=#ebf1ed> <h1>Update Books</h1> </font>
	</div>
</div>

<div id="container">




<body>
	
	
	
	<%-- <%
		DbManager db = new DbManager();
		Connection conn = (Connection) db.getConnection();
		if(conn == null)
			out.print("connection failed");
		else
			out.print("Please enter the information for the book you would like to add or remove..");
	%> --%> 
	
	
	<form name="addBookForm" action="AddBook" method="post" onsubmit="return loginValidate()">
	<br>
	
			<nav class="navbar sticky-top navbar-light bg-dark">
			<ul class="nav">
				<li><a class="navbar-brand" href="adminWelcome.jsp">Home</a></li>
				<li><a class="navbar-brand" href="shop.jsp"> Browse Books</a></li>
			</ul>
		</nav>	  
	
	

	<font size="3" color="green">${yesMessage}</font>
  	<font size="3" color="red">${noMessage}</font>
  	<font size="3" color="green">${successMessage}</font>
  	<br>
	
	
	
	<div id="content">
			<br> <font size="3">Please enter the information for the book you would like to add or remove..</font> <br><br>
	</div>
	
	<table border = "0">
	
 	 <tr align="left" valign="top">
 	 	<td>Book Title:</td>
  			<td><input type="text" name="title" /></td>
	 </tr>
	 
	 
	 <tr align="left" valign="top">
	   <td>Author Name:</td>
 		 <td><input type="text" name ="author"/></td>
 	 </tr>
 	 
 	 <tr align="left" valign="top">
	   <td>ISBN:</td>
 		 <td><input type="text" name ="ISBN"/></td>
 	 </tr>
 	 
 	 <tr align="left" valign="top">
	   <td>Price (Ex. 6.99):</td>
 		 <td><input type="text" name ="ISBN"/></td>
 	 </tr>
 	 
 	 <tr align="left" valign="top">
 	 	<td>Book Cover (.png or .jpeg):</td>
  			<td><input type="file" id="link" name="link" accept="image/png, image/jpeg"></td>
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