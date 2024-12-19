<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employee page</title>

<style type="text/css">
#createbtn{
	margin-left:70%;	
}
#table{
	margin-top:2%;
	color:black;
	width:80%;
	text-align: center;
}
.delete{
	padding:10px 10px;
	color:purple;
	background-color:#53C2F9FF;
	color:white;
	border:none;
}
.tablehead{
	background-color:#4EDB6CFF;
	color:purple;
}
.heading{
	background-color:teal;
	font-style:italic;
}
.create{
	padding:10px 15px;
	background-color:blue;
	color:white;
	border:none;
}
.update{
	background-color:pink;
	border:none;
	padding:10px 10px;
}
h2{
	text-align: center;
	font-size: 30px;
	font-style: italic;
	color:red;
}
*{
	background-color: white;
}
body{
color:white;
}
</style>
</head>
<body>
<%
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
		ps=con.prepareStatement("select * from emp where id=?");
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		ps.setInt(1, id);
		rs=ps.executeQuery();
		rs.next();
		
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>
	<h1 align="center" class="heading">All Employee</h1>
	<h2> <%= session.getAttribute("name") %>  </h2>
	<a id="createbtn" href="register.jsp"><button class="create">Create</button></a>
	<a href="logout"><button class="create">Logout</button></a>
	<table border="3" cellpadding="10" rules="all" align="center" bgcolor="#FC9EAFFF" id="table">
	<thead class="tablehead">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>Email</th>
			<th>Salary</th>
			<th>Department No</th>
			<th>Password</th>
			<th colspan="2">Action</th>
		</tr>
	</thead>
	<%  
	while(rs.next())
	{
		
	%>
	
	<tr>
		<td><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getString(4) %></td>
		<td><%= rs.getString(5) %></td>
		<td><%= rs.getString(6) %></td>
		<td><a href="delete?id=<%=  rs.getString(1)  %>" ><button class="delete">Delete</button></a></td>
		<td><a href="update.jsp?id=<%=  rs.getString(1)  %>" ><button class="update">Update</button></a></td>
	</tr>
		
	<%
	}
	%>
	<div class="btns">
			<a><button>Instagram</button></a>
			<a><button>Github</button></a>
			<a><button>LinkedIn</button></a>
		</div>
	</table>
	
	<script type="text/javascript">
		const msgEle=document.getElementById("msg");
		setTimeout(() => {
			msgEle.style.display="none"
		}, 2000);
		
	</script>
	
		
</body>
</html>