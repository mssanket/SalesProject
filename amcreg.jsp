<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.pojo.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="com.Modal.randomnum"%>
<%@page import="com.pojo.customer"%>
<%@page import="com.pojo.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apply AMC</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<!-- jQuery -->
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap4.css" rel="stylesheet" type="text/css"/>
<!-- javascript DataTable -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
</head>
<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/fontawesome-all.min.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>
<body bgcolor="lightgray">
<a  class="btn btn-danger"href="custdashboard.jsp">Home</a>
<hr>
<% 
BlManager bl=new BlManager();

customer c = (customer) session.getAttribute("cust");
String custname=c.getName(); 
List<Cart> list=bl.getCartRecordByName12(custname);
request.setAttribute("list2",list); 

%>
<h1 align="center">AMC Maintance Register</h1>
<hr>
<div class="container">
<h2><u>Customer Information</u></h2>
<form  class="form-inline" action="amcsave.jsp" method="post">

<table style="width : 90%; padding : 50%">
	<tr>
		<td><label for="Name">Name</label> </td>
		<td style="padding : 1%"><input type="text" class="form-control" name="name" value="<%=c.getName()%>"></td>
	</tr>
	<tr>
		<td><label for="Mobile NO">Mobile No</label></td>
		<td style="padding : 1%"><input type="text" class="form-control" name="mn" value="<%= c.getContact()%>"></td>
	</tr>
	<tr>
		<td><label for="Address">Address</label></td>
		<td style="padding : 1%"><input type="text" class="form-control" name="add" value="<%= c.getAddress()%>"></td>
	</tr>
	<tr>
		<td><label for="Email">Email ID</label> </td>
		<td style="padding : 1%"><input type="text" class="form-control" name="email" value="<%= c.getEmail()%>"></td>
	</tr>
	<tr>
		<td><label for="Product name">Product Name</label></td>
		<td style="padding : 1%"><select class="form-control" name="pname" style="height : 15%;"><c:forEach items="${list2}" var="u"><option>${u.getProductname()}</option></c:forEach></select></td>
	</tr>
	<tr>
		<td colspan ="2" style="padding : 1%"><input class="btn btn-success" type="submit" value="Show" style = "margin-left : 10%;width : 40%"></td>
	</tr>
</table>

</form>
</div>




</body>
</html>