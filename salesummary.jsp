<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.Modal.BlManager"%>
    <%@page import="com.pojo.*"%>
    <%@page import="java.util.*"%>
    <%@page import="com.pojo.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales Summary</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%  
BlManager bl=new BlManager();
List<customer> list=bl.viewcust();  
request.setAttribute("list",list);  
List<Product> list1=bl.viewpro();
request.setAttribute("list1",list1);
%>
<br><br>
<h1 align="center">Sales Summary</h1>
<hr><div class="header">
<center><%@ include file="links.jsp" %></center>
</div><br><br>
<div class="container">
<table class="table table-bordered" border="1" width="100%">  
<tr><th>Customer Name</th><th>Product</th><th>Price</th><th>Quantity</th><th>Purchased type</th><th>Total Price</th></tr>  
<c:forEach items="${list}" var="c"><c:forEach items="${list1}" var="p"> 
<tr><td>${c.getName()}</td><td>${p.getName()}</td><td>${p.getSellingprice()}</td><td>${p.getQuantity()}</td><td>${p.getPurchasedtype()}</td><td>${p.getQuantity()*p.getSellingprice()}</td></tr>  
</c:forEach></c:forEach>
</table> 
</div>
</body>
</html>