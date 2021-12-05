<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.Modal.*, com.pojo.*, java.util.*" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Annual Maintenance FollowUp</title>

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
<a class="btn btn-danger" href="dashboard.jsp">Home Page</a>
<%
BlManager blmanager= new BlManager();
List<Cart> list= blmanager.viewcart1();
session.setAttribute("data",list);
%>

<body>
<h1 align="center">Annual Maintenance Cost</h1>
<br><br>
<table class="table table-striped table-bordered table-hover" id="dtBasicExample" cellspacing="0" width="100%" >
 
<thead>
<tr>
<th class="th-sm">Customer Name</th>
<th class="th-sm">invoice Date</th>
<th class="th-sm">Invoice No</th>
<th class="th-sm">Net Amount</th>
<th class="th-sm">Warranty(In Month)</th>
<th class="th-sm">Warranty Start</th>
<th class="th-sm">Warranty Expire</th>
<th class="th-sm">Remarks</th>
<th class="th-sm">Remainder</th>
<th class="th-sm">Rem.Cont</th>
<th class="th-sm">Status</th>
<th class="th-sm">Next</th>
<th class="th-sm">Status ON</th>
</tr>
</thead>

<c:forEach items="${data}" var="d">
<tbody>
<tr>
<td align="center">${d.customername }</td>
<td align="center">${d.date }</td>
<td align="center">${d.invoice }</td>
<td align="center">${d.total }</td>
<td align="center">${d.warranty }</td>
<td align="center">${d.warrantystartdate }</td>
<td align="center">${d.warrantyenddate }</td>
<td align="center">see</td>
<td align="center"><a class="btn btn-primary" href="https://accounts.google.com">sendmail</a></td>
<td align="center">1</td>
<td ><select >
<option>Invoice Done</option>
<option>New </option>
<option>Rejected</option>
<option>Remainder</option>
</select>
</td>
<td align="center"><a class="btn btn-primary" href="https://www.gmail.com">sendmail</a></td>
<td align="center"> date  </td>
</tr>
</tbody>
</c:forEach>

</table>

<hr>
<script>
$(document).ready(function () {
$(data).DataTable();
$('.dataTables_length').addClass('bs-select');
});
</script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
</body>
</html>