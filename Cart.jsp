<%@page import="java.util.List"%>
<%@page import="com.pojo.Cart"%>
<%@page import="com.pojo.Seller"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="com.pojo.Product"%>
<%@page import="com.pojo.customer"%>
<%@ page errorPage="error.jsp" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CART</title>
</head>
<body>
<%
BlManager bl=new BlManager();
customer c = (customer) session.getAttribute("cust");

String productname=request.getParameter("productname");
String imgname=request.getParameter("imgname");
Product p=bl.getProductRecordById(productname);
String customername=c.getName();
int quantity=Integer.parseInt(request.getParameter("quantity"));
String type=request.getParameter("type");
String status=request.getParameter("status");
int price=Integer.parseInt(request.getParameter("price"));
int warranty=Integer.parseInt(request.getParameter("warranty"));
int discount=Integer.parseInt(request.getParameter("discount"));
int total=(price*quantity);

String sellername=p.getSeller();

Cart cart=bl.checkcart(customername, productname);
if(cart!=null)
{
	int quantity1=quantity+cart.getQuantity();
	bl.updatecart(productname,quantity1,total);
	
}
else
{
	bl.savecart(customername, productname, imgname, price, quantity, sellername, total, type, status, warranty, discount);
	
 }
response.sendRedirect("custdashboard.jsp");
 %>
 
 
</body>
</html>