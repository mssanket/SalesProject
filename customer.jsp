<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.pojo.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<link rel="stylesheet" href="https://bootswatch.com/4/simplex/bootstrap.min.css"/>

<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mehta Sales-Customer details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
</style>

</head>
<body>
<center><h1>Customer Details</h1></center>
<br><br>
<div class="container">
<div class="col-xs-1">
<a href="dashboard.jsp" class="btn btn-primary btn-block m-t-md">Back</a>
</div>
</div>
<br>

<%
List<customer> list=BlManager.viewcust();
request.setAttribute("list",list);  
%>
<div class="container">
<div class="col-xs-3">
<input class="form-control" id="myInput" type="text" placeholder="Search..">
  </div>
  <br>
  <br>
  
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th align="center">Id</th>
        <th align="center">Name</th>
        <th align="center">Email</th>
        <th align="center">Address</th>
        <th align="center">Contact</th>
      </tr>
    </thead>
    <c:forEach items="${list}" var="u">
    <tbody id="myTable">
      
      <tr>
        <td>${u.getId()}</td>
        <td>${u.getName()}</td>
        <td>${u.getEmail() }</td>
        
        <td>${u.getAddress()}</td>
        <td>${u.getContact()}</td>
      </tr>
    </tbody>
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