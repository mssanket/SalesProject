<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page import="com.Modal.BlManager"%>
<%@page import="java.util.List"%>
<%@page import="com.pojo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quotation</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<h1 align="center">Quotation Section</h1>
<div class="container">
<a class="btn btn-info" href="dashboard.jsp">Back</a>
</div>
<br><br>
<%
List<customer> list=BlManager.getAllcustDetails();
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
<th>Email</th>
<th>Address</th>
<th>Contact</th> 
<th>Type</th>
</tr>
<c:forEach items="${list}" var="u">  
<tbody id="myTable">
<tr>
<td>${u.getId()}</td>
<td>${u.getName()}</td>
<td>${u.getEmail()}</td>
<td>${u.getAddress()}</td>
<td>${u.getContact()}</td>
<td><a href="quotation.jsp?id=${u.getId()}">Quotation</a></td>
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
 
<%-- <%
List<customer> list=BlManager.getAllcustDetails();
request.setAttribute("list",list);    
%>
<table border="1" width="90%">  
<tr><th>Id</th><th>Name</th><th>EMAIL</th><th>ADDRESS</th><th>CONTACT</th></tr>  
<tr></tr>
<c:forEach items="${list}" var="u">  
<tr><td align="center">${u.getId()}</td><td>${u.getName()}</td><td>${u.getEmail()}</td><td>${u.getAddress()}</td><td>${u.getContact()}</td><td><a href="quotation.jsp?id=${u.getId()}">Quotation</a></td></tr>
</c:forEach>  
</table>  --%>
</body>
</html>