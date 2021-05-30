
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%@ page trimDirectiveWhitespaces="true"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>

	<%
	try {
		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		


		if (username.equals("admin")) {
	%>
	<jsp:forward page="index3.html"></jsp:forward>
	<%
	} else {
	%>
	<jsp:include page="adminindex.html"></jsp:include>
	<%
	}
	} catch (Exception ex) {
	%>
	<%
	out.println("Something went wrong please try again.");
	ex.printStackTrace();
	}
	%>

</body>
</html>