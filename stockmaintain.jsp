<%@page import="com.Modal.BlManager"%>
<%@page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.pojo.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Stock</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<h1 align="center">Update Stock</h1><hr>
<div class="header">
<center><%@ include file="links.jsp" %></center>
</div>
<%
BlManager bl=new BlManager();
List<Product> list=bl.viewpro();  
request.setAttribute("list",list);  
DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
%>

<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Update Products</button>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
<div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Update Products</h4>
      </div>
      <div class="modal-body">
        <div class="container">
<div class="col-xs-3">
<form  action="updatepro.jsp">
<div class="form-group">
<label>Products:</label>
<select class="form-control" name="productname"><c:forEach items="${list}" var="u"><option>${u.getName()}</option></c:forEach>
</select>
</div>
<div class="form-group">
<label>Quantity:</label>
<input type="text" class="form-control"name="quantity" placeholder="Enter Quantity" required>
</div>
<div class="form-group">
<label>Purchased Type:</label>
<select name="PT" class="form-control"><option>Cash</option><option>Card</option></select>
</div>
<div class="form-group" required>
<label>Date:</label>
<input type="text" name="date" class="form-control" value="<%= df.format(new Date()) %>" readonly="readonly">
</div>
<input type="submit" class="btn btn-success" value="Save"> &nbsp;&nbsp;<input type="reset" class="btn btn-danger" value="Reset">
</form>
</div>
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>


<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1">Return Products</button>

<!-- Modal -->
<div id="myModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
<div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Return Products</h4>
      </div>
      <div class="modal-body">
        <div class="container">
<div class="col-xs-3">
<form  action="returnpro.jsp">
<div class="form-group">
<label>Products:</label>
<select class="form-control" name="productname"><c:forEach items="${list}" var="u"><option>${u.getName()}</option></c:forEach>
</select>
</div>
<div class="form-group">
<label>Quantity:</label>
<input type="text" class="form-control"name="quantity" placeholder="Enter Quantity" required>
</div>
<div class="form-group">
<label>Purchased Type:</label>
<select name="PT" class="form-control"><option>Cash</option><option>Card</option></select>
</div>
<div class="form-group" required>
<label>Date:</label>
<input type="text" class="form-control" name="date" value="<%= df.format(new Date()) %>" readonly="readonly">
</div>
<input type="submit" class="btn btn-success" value="Save"> &nbsp;&nbsp;<input type="reset" class="btn btn-danger" value="Reset">
</form>
</div>
</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>


<div align="right" >
<form action="deletepro.jsp">
<div class="form-group">
<!-- Product Id:<input type="text" name="productid"  placeholder="Enter Product id" required> -->
<label>Products:</label>
<select name="productid"><c:forEach items="${list}" var="u"><option>${u.getName()}</option></c:forEach><input type="submit"  class="btn btn-danger" value="Delete">
</select>
</div>

</form>
</div>

<%
List<Product> list1=bl.viewpro();  
request.setAttribute("list1",list1);  
%>
<h1 align="center">Product List</h1>  <br>
    
  <div class="container">
<table  class="table table-bordered table-striped table-hover"border="1" width="100%">  
<tr><th>Id</th><th>Name</th><th>Category</th><th>Seller</th><th>Quantity</th><th>Purchased Price (Per Product)</th><th>Selling Price (Per Product)</th><th>Purchased Type</th></tr>  
<c:forEach items="${list1}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getCategory()}</td><td>${u.getSeller()}</td><td>${u.getQuantity()}</<td><td>${u.getPurchasedprice()}</td><td>${u.getSellingprice()}</td><td>${u.getPurchasedtype()}</td></tr>  
</c:forEach>  
</table>
</div>
</body>
</html>