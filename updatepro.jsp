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
String productname=request.getParameter("productname");
int quantity=Integer.parseInt(request.getParameter("quantity"));
String purchasedtype=request.getParameter("PT");
String stock=request.getParameter("stock");
String date=request.getParameter("date");
BlManager bl=new BlManager();
Product p=bl.getProductRecordById(productname);
int p_quantity1=p.getQuantity();

int quantity1=p_quantity1+quantity;

bl.updatepro(productname,quantity1,purchasedtype,date);
response.sendRedirect("stockmaintain.jsp");
%>
</body>
</html>