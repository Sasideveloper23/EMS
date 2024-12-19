<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
	.login{
		box-shadow:0px 0px 10px  black;
		border-radius:10px;
		width:30%;
		margin-left:50%;
		
		padding:4% 5%;
	}
	.mail{
		border:2px solid blue;
		border-radius:5px;
		padding:12px 15px;
		width:80%;
	}
	.pass{
		border:2px solid blue;
		border-radius:5px;
		padding:12px 15px;
		width:80%;
		color:black;
	}
	.btn{
		
		background-color:blue;
		color:white;
		border-radius:8px;
		padding:10px 14px;;
		border:none;
		display:block;
		margin:auto ;;
	}
	*{
		background-color: white;
	}
	h1{
		color: black;
		font-style: italic;
		font-size: 40px;
		margin-left:38%;
	}
	input{
	color:white;
	}
</style>
</head>
<body>
<%
Connection con=null;
Statement s=null;
ResultSet rs=null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
	s=con.createStatement();
	ResultSet rs1=s.executeQuery("select * from emp");
}
catch(Exception e){
	e.printStackTrace();
}
%>
	<h1 align="center">Login</h1>
	
	
<h2 align="center"> 
	<% session.invalidate(); %>
 </h2>
	<div class="login">
		<form action="login" method="post">	
			<input type="email" placeholder="Enter your mail id" name="email" class="mail"><br><br>
			<input type="password" placeholder="Enter password" name="password" class="pass"><br><br>
			<button type="submit" class="btn">Login</button>
		</form>
	</div>
</body>
</html>