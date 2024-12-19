<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Form</title>
<style>
	form{
	display:flex;
	flex-direction:column;
	margin:auto;
	width:40%;
	
	}
	.name{
	text-align: center;
	font-size: 30px;
	font-style: italic;
	color:red;
	}
	.box{
	display:block;
	margin:auto;
	width:80%;
	box-shadow: 0px 0px 3px yellow;
	background-color:skyblue;
	border-radius: 20px;
	}
	
	h2{
	text-align: center;
	font-size: 30px;
	font-style: italic;
	color:black;
	}
	input{
		border:solid 2px black;
		border:none;
		padding:5px;
		margin-left:5%;
		color:black;
	}
	
	button{
		display:block;
		margin:auto;
		border:none;
		padding:10px;
		background-color: red;
		color:white;
	}		
</style>
</head>
<body>
<h2 class="name"> <%= session.getAttribute("name") %>  </h2>
		<form action="register" method="post">
		<fieldset class="box">
		<h2>Register Here⬇️</h2>
			<label>Enter id: </label>
				<input type="number" name="id" placeholder= "enter id: "><br><br>
			<label>Enter name: </label>
				 <input type="text" name="name" placeholder= "enter name: "><br><br>
			<label>Enter email: </label>
			 	<input type="text" name="email" placeholder= "enter mail: "><br><br>
			 <label>Enter salary: </label>
			 	<input type="text" name="salary" placeholder= "enter salary: "><br><br>
			 <label>Enter dno: </label>
			 	<input type="text" name="dno" placeholder= "enter dno: "><br><br>
			 <label>Enter password: </label>
			  <input type="password" name="password" placeholder= "enter password: "><br><br>
			 <button>Register</button>
		
		</fieldset>
		
		 </form>
</body>
</html>