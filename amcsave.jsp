
<%@page import="java.text.*,java.util.*"%>
<%@page import="com.pojo.*"%>
<%@page import="com.pojo.Product"%>
<%@page import="com.Modal.BlManager"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Annual Maintenance Contract </title>
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
<body>
<% 
 BlManager bl=new BlManager();
DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
customer c = (customer) session.getAttribute("cust");
String cname=request.getParameter("name");                   
String pname=request.getParameter("pname");
Cart cart=bl.checkcart1(cname, pname);
String s=df.format(new Date());

%>
<%-- <jsp:include page="amcreg.jsp" /> --%>
<hr> 
<form action="amcreg1.jsp" method="post">

<h2><u>Product Information</u></h2>
<div class="container">
<div class=col-xs-4>
<input type="hidden" name="id" value="<%=cart.getId()%>">
<input type="hidden" name="name" value="<%=cart.getCustomername()%>">
<table style="width : 100%; padding : 50%"><tr>
	<td>Product Name</td>
	<td style="padding : 2%"><input type="text" class="form-control" name="pname" value="<%= cart.getProductname()%>"></td>
</tr>
<tr>
	<td>Product Price</td>
	<td style="padding : 2%"><input type="text" class="form-control"name="pp" value="<%= cart.getPrice()%>"></td>
</tr>
<tr>
	<td>Extend Warranty</td>
	<td style="padding : 2%"><select name="newwarranty" class="form-control" ><option value="1">1</option>
                                           <option>2</option>
                                           <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                            <option>10</option>
                                            <option>11</option>
                                            <option>12</option>
                                            </select></td>
</tr>
<tr>
	<td>AMC Amount</td>
	<td style="padding : 2%"><input type="text" name="aa" class="form-control" value="10%"></td>
</tr>
<tr>
	<td>AMC Total Amount</td>
	<td style="padding : 2%"><input type="text" class="form-control" name="amcprice" value="<%= cart.getPrice()*0.10 %>"></td>
</tr>
<tr>
	<td>Warranty Expire Date</td>
	<td style="padding : 2%"><input type="text" name="warrantyenddate" class="form-control" value="<%=df.format(new Date())%>" ></td>
</tr>
<!-- try{String d=cart.getWarrantyenddate();}catch(NullPointerException n){df.format(new Date());} -->
<tr>
	<td>Engineer Suggestion</td>
	<td style="padding : 2%"><textarea  rows="2" name="address" class="form-control"></textarea></td>
</tr>
<tr>
	<td colspan = "2" style="padding : 2%;margin-left : 10%;width :50%;"><input  class="btn btn-success"type="submit" value="Submit"></td>
</tr>
</table>
</form>

</body>
</html>
