<%@page import="com.pojo.Product"%>
<%@page import="com.Modal.BlManager"%>
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
BlManager bl=new BlManager();
String productname=request.getParameter("productname");
int quantity=Integer.parseInt(request.getParameter("quantity"));
String purchasedtype=request.getParameter("PT");
String stock=request.getParameter("stock");
String date=request.getParameter("date");

Product p=bl.getProductRecordById(productname);
int p_quantity2=p.getQuantity();

int quantity2=p_quantity2-quantity;

bl.updatepro1(productname,quantity2,purchasedtype,date);
response.sendRedirect("stockmaintain.jsp");
%>
</body>
</html>