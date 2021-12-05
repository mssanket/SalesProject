<%@page import="com.Modal.BlManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.pojo.*"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seller Information</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<br>
<br>
<h1 align="center">Seller Record</h1><hr>
<center><%@ include file="links.jsp" %></center>

<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Add Seller</button>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add Seller</h4>
      </div>
      <div class="modal-body">
        <div class="container">
<div class="col-xs-3">
<form  action="sellerreg.jsp" method="post">
<div class="form-group">
<label>Name:</label>
<input type="text" class="form-control"name="name" placeholder="Enter Seller Name" required>
</div>
<div class="form-group">
<label>Contact:</label>
<input type="text" class="form-control" placeholder="Enter Seller contact" name="contact" required pattern="[789][0-9]{9}">
</div>
<div class="form-group" required>
<label>Email:</label>
<input type="email" class="form-control" name="email" placeholder="Enter Seller Email" required>
</div>
<div class="form-group">
<label>Address:</label>
<input type="text" class="form-control" name="address" placeholder="Enter Seller Address" required>
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

<div align="right">

<form action="deleteseller.jsp">
<div class="form-group">
Seller Id:<input type="text" name="sellerid"  placeholder="Enter Seller id" required>
<input type="submit"  class="btn btn-danger" value="Delete">
</div>
</form>
</div>
<br><br>






<h1 align="center">Seller List</h1>  <br>
   
<%  
BlManager bl=new BlManager();
List<Seller> list=bl.viewseller();  
request.setAttribute("list",list);  
%>  
  <div class="container">
<table  class="table table-bordered table-striped table-hover"border="1" width="100%">  
<tr><th>Id</th><th>Name</th><th>Address</th><th>Contact</th><th>Email</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getAddress()}</td><td>${u.getContact()}</td><td>${u.getEmail()}</td></tr>  
</c:forEach>  
</table>
</div>
</body>
</html>