<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN"
"http://www.w3.org/tr/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>

<link rel="stylesheet" href="css/bootstrap.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-grid.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap-reboot.min.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="login.css" type="text/css">


<head>
	<title>display data from the table using jsp</title>
</head>


<body>

<div style="background: url(https://www.heet.org.uk/wp-content/uploads/2016/06/gradient-background-26046-26731-hd-wallpapers.jpg.png) !important" class="jumbotron">
	<div class="text-center">
		<font size="5" color=#ebf1ed> <h1>Book Table</h1> </font>
	</div>
</div>


<%
try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mysql://127.0.0.1:3306/coursedatabase";
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection(connectionURL, "goob", "Reginaldthe2nd#");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * FROM books";
rs = statement.executeQuery(QueryString);
int n=0;
String x = "taa";
%>

<TABLE class="table-striped" style="background-color: #F4DC78" align="center" border="0">

<%-- 
<tr class=sticky-top>
	<th>Cover</th>
	<th>Title</th>
	<th>Author</th>
	<th>ISBN</th>
	<th>Price</th>
</tr>

--%>

<%
while (rs.next()) {
	n++;

%>

<tr>
	<td align="center" valign="top"><%=n %></td>
	
	
	<td align="center"><A HREF=singleBook.jsp>
		<img class="resize" src="./photos/'rs.getString(5)'" alt="${rs.getString(5)} cover">
	</a></td>

	<td align="center"><A HREF="singleBook.jsp">	
		<font size="4" color="blue">Title:</font>
			<font size="4" color="blue"><%=rs.getString(1)%></font>
		<br><br>
		
		<font size="4" color="blue">Author:</font>
			<font size="4" color="blue"><%=rs.getString(2)%></font>
		<br><br>
		
		<font size="4" color="blue">ISBN:</font>
			<font size="4" color="blue"><%=rs.getString(3)%></font>
		<br><br>
		
		<font size="4" color="blue">Price: $</font>
			<font size="4" color="blue"><%=rs.getString(4)%></font>
		<br><br>
		
	</a></td>

</tr>

<% 

} %>

<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} 
catch (Exception ex) {
%>

<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

</TABLE>

<TABLE>
	<tr>
		<td><FORM ACTION="welcome_to_database_query.jsp" method="get" >
		<button type="submit"><-- back</button></td>
	</tr>
</TABLE>
</font>
</body>
</html>
