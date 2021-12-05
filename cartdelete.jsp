<%@page import="com.Modal.BlManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
BlManager bl=new BlManager();
String productname=request.getParameter("productname");
bl.deletecart1(productname);
%>
<jsp:forward page="Cart2.jsp"></jsp:forward>
</body>
</html>