<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


</head>

<head>
	<script type="text/javascript" src="script.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Payment Information</title>
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
			<font size="5" color=#ebf1ed> <h1>Payment Information</h1> </font>
		</div>
	</div>
		
		<nav class="navbar sticky-top navbar-light bg-dark">
			<ul class="nav">
				<li><a class="navbar-brand" href="welcome.jsp">Home</a></li>
				<li><a class="navbar-brand" href="shop.jsp"> Continue Shopping</a></li>
				<li><a class="navbar-brand" href="logout.jsp"> Logout</a></li>
			</ul>
		</nav>	
		
		
		
		<div class="table-responsive">
		
		<table border = "0">
	
 	 		<tr align="left" valign="top">
 	 			<th>Payment method: </th>
 	 			<td><button><img class="resizeTiny" src="https://resources.mynewsdesk.com/image/upload/ojf8ed4taaxccncp6pcp.png"></button></td>
 	 			<td><button><img class="resizeTiny" src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/1280px-MasterCard_Logo.svg.png"></button></td>
 	 			<td><button><img class="resizeTiny" src="https://kingdomanimalhospital.com/wp-content/uploads/2017/08/discover-card-logo.png"></button></td>
 	 			<td><button><img class="resizeTiny" src="https://www.pointsnerd.ca/wp-content/uploads/2017/04/americanexpress-418x315.png"></button></td>
			</tr>
<br><br>
	 
	 		<tr align="left" valign="top">
	   			<td>Name On Card: </td>
 		 		<td><input type="text" name ="lastName"/></td>
 	 		</tr>
 	 
 	  		<tr align="left" valign="top">
	   			<td>Card Number:</td>
 				 <td><input type="text" name ="username"/></td>
 			</tr>
 	 
 	  		<tr align="left" valign="top">
	   			<td>Expiration Date:</td>
 		 		<td><input type="password" name ="password" id="password"/></td>
 	 		</tr>
 	 
 	  		<tr align="left" valign="top">
	   			<td>CVV: </td>
	   			<td><input type="password" name ="password" id="password"/></td>
 	 		</tr>
 	 
 	 		<tr align="left" valign="top">
	   			<th>Billing Address</th>
 	 		</tr>
 	 
 	   		<tr align="left" valign="top">
	   			<td>E-mail: </td>
	   			<td><input type="password" name ="password" id="password"/></td>
 	 		</tr>
 	 
 	  	   <tr align="left" valign="top">
	   			<td>Phone Number: </td>
	   			<td><input type="password" name ="password" id="password"/></td>
 	 		</tr>
 	 
 	  	   <tr align="left" valign="top">
	   <td>City:</td>
	   	<td><input type="password" name ="password" id="password"/></td>
 	 </tr>
 	 
 	  	   <tr align="left" valign="top">
	   <td>State:</td>
	   	<td><input type="password" name ="password" id="password"/></td>
 	 </tr>
 	 
 	  	   <tr align="left" valign="top">
	   <td>Zip Code:</td>
	   	<td><input type="password" name ="password" id="password"/></td>
 	 </tr>

	<tr align="left" valign="top">
		<td> 
  			<input type="submit" name="submit" value="Submit" /> 
  		</td>
  	</tr>
	
	</table>
	</div>
	
	
		
  

</body>
</html>