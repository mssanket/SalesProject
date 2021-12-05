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
<title>Stock Management</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%  
BlManager bl=new BlManager();
List<Seller> list=bl.viewseller();  
request.setAttribute("list",list);  
%> 
<br><br>
<h1 align="center">Stock Management</h1>
<hr><div class="header">
<center><%@ include file="links.jsp" %></center>
</div>
<div class="container">
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Add Product</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Products</h4>
        </div>
        <div class="modal-body">
         <div class="container">
  <div class="col-xs-4">
<form  class="form-group" action="ProductReg" method="post" enctype="multipart/form-data">
<div class="form-group">
<label>Product Name:</label>
<input type="text" class="form-control" placeholder="Enter Product Name" name="name" required pattern="[A-Za-z]+">
</div>
<div class="form-group">
<label>Purchased Price:</label>
<input type="text" class="form-control" placeholder="Enter Purchased Price" name="purchasedprice" required pattern="[0-9]+">
</div>
<div class="form-group">
<label>Selling Price:</label>
<input type="text" class="form-control"  placeholder="Enter Product Selling Price" name="sellingprice" required pattern="[0-9]+">
</div>
<div class="form-group">
<label>Category:</label>

<!--  <input type="text" class="form-control" placeholder="Enter Product category" name="category">-->
<select class="form-control"  name="category">
<option value="Electronics">Electronics</option>
<option value="Electrical">Electrical</option>
<option value="Food">Food</option>
<option value="Safety">Safety</option>
<option value="Machinery">Machinery</option>
<option value="Machinery">Other</option>
</select>
</div>
<div class="form-group">
<label>Seller:</label>
<select class="form-control" name="seller"><c:forEach items="${list}" var="u"><option>${u.getName()}</option></c:forEach>
</select>
</div>
<div class="form-group">
<label>Quantity:</label>
<input type="text" placeholder="Enter Product Quantity" class="form-control" name="quantity" required pattern="[0-9]+">
</div>
<div class="form-group">
<label>Warranty:</label>
<input type="text" placeholder="Enter Product Warranty (in years)" class="form-control" name="warranty" required pattern="[0-9]+">
</div>
<div class="form-group">
<label>Discount:</label>
<input type="text" placeholder="Enter Product Discount (in %)" class="form-control" name="discount" required pattern="[0-9]+">
</div>
<div class="form-group">
<label>Remark:</label>
<input type="text" placeholder="Enter Product Remark" class="form-control" name="remark" required>
</div>
<div class="form-group">
<label>Image:</label>
<input type="file" placeholder="Enter Product image" class="form-control" name="image" required>
</div>
<input type="submit" class="btn btn-success" value="Save">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"  class="btn btn-danger"value="Reset">
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
  
</div>

<div align="right">
</div>
<br><br>
</div>
<h1 align="center">Product List</h1>  <br>  
<%  
List<Product> list1=bl.viewpro();  
request.setAttribute("list1",list1);  
%>  
  <div class="container">
<table class="table table-bordered" border="1" width="100%">  
<tr><th>Id</th><th>Name</th><th>Category</th><th>Seller</th><th>Quantity</th><th>Purchased Price</th><th>Selling Price</th><th>Image Name</th></tr>  
<c:forEach items="${list1}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getCategory()}</td><td>${u.getSeller()}</td><td>${u.getQuantity()}</td><td>${u.getPurchasedprice()}</td><td>${u.getSellingprice()}</td><td>${u.getImana()}</td></tr>  
</c:forEach>  
</table> 
</div>
</body>
</html>