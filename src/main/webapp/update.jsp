<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style>
	.forms{
		display:block;
		margin:auto;
		border:1px solid black;
		width:30%;
		border-radius:20px;
		background-color: pink;
		box-shadow: 0px 0px 2px black;
		padding:15px;
	}
	.updpage{
		font-style:italic;
		
	}
	.frm1{
		margin:30px 40px;
	}
	h2{
	font-size: 30px;
	font-style: italic;
	}
	button{
		background-color: blue;
		display:block;
		margin:auto;
		padding:10px;
		border:none;
		border-radius: 5px;
		color:white;
	}
</style>
</head>
<body>

	<%
		ResultSet rs=(ResultSet)request.getAttribute("rs");
		
	%>
	
	
	<h2 align="center"> <%= session.getAttribute("name") %>  </h2>
	<div class="forms">
		<form action="update" method="post" >
			<div class="frm1">
			<h1 align="center" class="updpage">Update Page⬇️</h1>
				<label>Enter id: </label>
					<input type="text" value="<%=rs.getInt(1) %>" name="id" placeholder="Enter new id"><br><br>
				<label>Enter name:</label>
					<input type="text" name="name" value="<%=rs.getString(2) %>" placeholder="Enter new name"><br><br>
				<label>Enter email: </label>
					<input type="text" name="email" value="<%=rs.getString(3) %>" placeholder="Enter new email"><br><br>
				<label>Enter salary: </label>
					<input type="text" name="salary" value="<%=rs.getDouble(4) %>" placeholder="Enter new salary"><br><br>
				<label>Enter dno: </label>
					<input type="text" name="dno" value="<%=rs.getInt(5) %>" placeholder="Enter new dno"><br><br>
				<label>Enter password: </label>
					<input type="password" name="password" value="<%=rs.getString(6) %>" placeholder="Enter new password"><br><br>
					<button type="submit">Update</button>
			</div>
		
	</form>
	</div>
</body>
</html>