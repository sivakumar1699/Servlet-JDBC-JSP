<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//http 1.1 version
response.setHeader("Pragma","no-cache");//HTTP 1.0 version(older version)
response.setHeader("Expires","0");//proxie servers
if(session.getAttribute("username")==null){
	response.sendRedirect("login.jsp");
}
%>
Welcome ${username}
<a href="videos.jsp">Videos here</a>
<form action="Logout">
	<input type="submit" value="Logout">
</form>
</body>
</html>