<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Bracelet</title>
<style>
  .header {
    display: flex;
  }
  .header-logo-container {
    display: flex;
  }
  .header-search-container {
    display: flex;
  }
  .content {
    min-height: 500px;
    display: flex;
    justify-content: center;
    padding: 10px;
  }
  .content-container {
    width: 100%;
    max-width: 300px;
  }
  .content-container-item {
    width: 100px;
  }
  .footer {
    display: flex;
  }

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
<header>  </header>
	<nav1> <h6><img alt="" src="./images/1.png">
		There are one pilgrim need for medical help
	</h6>
	</nav1>
	<nav2>
	<h6> <img alt="" src="./images/2.png"> 
	There are one pilgrim need for general help
	</h6>
	</nav2>
	<nav3> 
	<h6> <a href="lost_list.jsp">
	<img alt="" src="./images/3.png">
	There are one pilgrim are lost
	</a>
	</h6>
	</nav3>
	<div></div>
	<div></div>


</body>
</html>