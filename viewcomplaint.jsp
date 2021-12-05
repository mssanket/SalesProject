<%@page import="com.Modal.BlManager"%>
<%@page import="java.util.List"%>
<%@page import="com.pojo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Complaints</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<h1 align="center">Complaints</h1>
<div class="container">
<a class="btn btn-info" href="dashboard.jsp">Back</a>
</div>
<br><br>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%
List<complaint> list=BlManager.getAllDetails();

request.setAttribute("list",list);    

%>
<div class="container">
<div class="form-group row">
<div class="col-xs-3">
<input class="form-control" id="myInput" type="text" placeholder="Search..">
</div>
</div>
</div>

  <div class="container">
<table  class="table table-hover table-bordered table-striped"   width="90%">  
<tr>
<th>Id</th>
<th>Name</th>
<th>Complaint Number</th>
<th>Complaint Date</th>
<th>Product Number</th>
<th>Details</th></tr>  
<tr></tr>
<c:forEach items="${list}" var="u">  
    <tbody id="myTable">
<tr>
<td>${u.getId()}</td>
<td>${u.getCpname()}</td>
<td>${u.getComplaintrefno()}</td>
<td>${u.getComplaintdate()}</td>
<td>${u.getProductno()}</td>
<td><a href="viewcomplaints.jsp?id=${u.getId()}">More Details</a></td>
</tr>

</c:forEach>  
</table>  
</div>
  <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</body>
</html>