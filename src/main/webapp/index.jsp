<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome page</title>

</head>
<body>
<% response.sendRedirect("login.jsp"); %>
	<h1 >welcome to EMS</h1>
	<a href="register.jsp"><button>Click Here to Register</button></a>
	
	<a href="allemp"><button>View All Employee</button></a>
	
	<script type="text/javascript">
		let msgElem=document.getElementById("msg");
		setTimeout(() => {
			msgEle.style.display='none';
		}, 2000);
	</script>
</body>
</html>