<%@page import="java.io.Console"%>
<%@page
	import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Bracelet</title>
<style>
body {
	background: #f4f4f4 url(bg.png) center top no-repeat;
	padding: 0;
	margin: 0;
	direction: rtl;
	background-size: 100%;
	margin: 0
}

html {
	font-family: sans-serif;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%
}

header {
	padding: 100px;
	text-align: center;
	font-size: 35px;
	color: white;
}

nav1 {
	float: left;
	padding: 20px;
	width: 8%;
	margin-left: 450px;
	height: 300px; /* only for demonstration, should be removed */
	padding: 20px;
}

table, th, td {
	border: 1px solid black;
}

nav2 {
	float: left;
	padding: 20px;
	width: 8%;
	height: 300px; /* only for demonstration, should be removed */
}

nav3 {
	float: left;
	padding: 20px;
	width: 8%;
	height: 300px; /* only for demonstration, should be removed */
}
</style>

</head>
<body>
	<header> </header>
	<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<table style="width: 30%; text-align: center;" align="center">
		<tr>
			<td>Location</td>
			<td>Pilgrim Name</td>
			<td>ID</td>
			<td>NO.</td>

		</tr>
		<%@ page import="org.Hajj.bean.*,java.util.List,org.Hajj.dao.*"%>
		<%
			List<Pilgrim> list1 = PilgrimDao.getAll();
			int no = 0;
			for (Pilgrim b1 : list1) {
				no++;
		%>

		<tr>
			<td><a href="./lost_map.jsp"><img alt="" src="./images/location_pin.png" width="30"></a></td>
			<td><%=b1.getName()%></td>
			<td><%=b1.getId()%></td>
			<td><%=no%></td>

		</tr>

		<%
			}
		%>
	</table>


</body>
</html>