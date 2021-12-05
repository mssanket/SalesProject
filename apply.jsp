<%@page import="com.Modal.BlManager"%>
<%@page import="com.pojo.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
BlManager bl=new BlManager();
customer c = (customer) session.getAttribute("cust");
String customername=c.getName();
String apply=request.getParameter("apply");
String randominvoice=request.getParameter("invoice");
String date=request.getParameter("date");
bl.applycart(customername, apply, date ,randominvoice);

response.sendRedirect("custdashboard.jsp");
%>
</body>
</html>