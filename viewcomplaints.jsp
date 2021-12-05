<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@page import="com.Modal.BlManager"%>
<%@page import="java.util.*"%>
<%@page import="com.pojo.*"%>
<%@page import="java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint Details</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%
int id=Integer.parseInt(request.getParameter("id"));  
BlManager bl= new BlManager();
complaint c=bl.getComplaintRecordById(id);
DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
%>
<br>

<a class="btn btn-info" href="viewcomplaint.jsp">Back</a> 
<center><h1>Complaint Details</h1></center>
<div class="container">
<table class="table table-striped table-hover" border="2px" align="center">

<div class="form-group">

<tr><th>Customer ID : </th><td><%= c.getCustomerno()%></td></tr>
<tr><th>Customer Name : </th><td><%= c.getCpname()%></td></tr>

<tr><th>Address : </th><td><%= c.getAddress()%></td></tr>

<tr><th>Complaint Date : </th><td><%= df.format(new Date()) %></td></tr>
<tr><th>Mobile no : </th><td><%= c.getMobileno()%></td>
<tr><th>Email Id :</th><td><%= c.getEmail()%> </td></tr>
<tr><th>Product no : </th><td><%= c.getProductno()%></td></tr>
<tr><th>Complaint Nature :  </th><td><%= c.getComplaintnature()%></td></tr>
</div>
  
</table>   
<br>
<center><a class="btn btn-success " href="https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin">Action</a></center>
<%-- <center><input type="submit"class="btn-info" value="ACTION"></center> --%>
</div>
</body>
<!-- scripts -->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</html>