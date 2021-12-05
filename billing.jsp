<%@page import="com.pojo.Cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="com.pojo.customer"%>
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<%
BlManager bl=new BlManager();
String customername=request.getParameter("customername");
customer c=bl.getRecordByName(customername);
session.setAttribute("customername",customername);
List<Cart> cart=bl.getCartInvoice(customername);
Cart c1=cart.get(0);
String apply="Billing";

DateFormat df=new SimpleDateFormat("dd/MM/yyyy");

List<Cart> list=bl.getCartRecordByApply(customername,apply);
request.setAttribute("list",list);

List<Long> list1=bl.gettotal(customername);
long total=list1.get(0);  

int count=1;

Cart cart1=new Cart();
%>

<div id="dvContainer" style="marin-left:10%;padding-left : 10%;">
	<div align="right"><h2>Billing</h2></div>	
	
	<table>
	<tr><th align="left">Mehta Sales Software</th></tr>
	<tr><th align="left">Ambient court</th></tr>
	<tr><th align="left">Billing For:</th></tr>
	<tr><th align="left">Name:<%=c.getName() %></th></tr>
	<tr><th align="left">Address:<%=c.getAddress() %></th></tr>
	<tr><th align="left">Phone:<%=c.getContact() %></th></tr>
	<tr><th align="left">Invoice:<%=c1.getInvoice() %></th></tr>
	</table>
	<br>
	<br>
</div>
<div >
  <div >
    
      <table class="table" border ="1">
        <thead>
          <tr>
            <th class="text-center"> # </th>
            <th class="text-center"> Product </th>
            <th class="text-center"> From </th>
            <th class="text-center"> To </th>
            <th class="text-center"> Price </th>
            <th class="text-center"> Qty </th>
            <th class="text-center"> Warranty </th>
            <th class="text-center"> Discount </th>
            <th class="text-center"> Total </th>
          </tr>
        </thead>
        <c:forEach items="${list}" var="c">
        <tbody>
          <tr id='addr0'>
            <td><%=count %></td>
            <td><label name="productname" value="${c.getProductname()}">${c.getProductname()}</label></td>
            <td><label name="warrantystartdate">${c.getWarrantystartdate()}</label></td>
            <td><label name="warrantyenddate" >${c.getWarrantyenddate()}</label></td> 
            <td><label name="price">${c.getPrice()}</label></td>
            <td><label name="quantity">${c.getQuantity()}</label></td>
            <td><label name="discount">${c.getDiscount()}</label></td>
            <td><label name="warranty">${c.getWarranty()}</label></td>
            <td><label name="total">${c.getTotal()}</label></td>        
          </tr>
          <%count++; %>
          </c:forEach>
          <tr>
          	<td colspan ="9" align="Center">Bill Total</td>
          </tr>
          <tr>
          	<td colspan ="8" align="right">Sub Total</td>
          	<td><input type="number" name='sub_total' placeholder='0.00' class="form-control" id="sub_total" value="<%=total%>" readonly/></td>
          </tr>
          <tr>
          	<td colspan ="8" align="right">Tax</td>
          	<td>
          		<div class="input-group mb-2 mb-sm-0">
                <input type="number" class="form-control" id="tax" placeholder="0" name="tax" value="<%=18 %>" readonly>
                <div class="input-group-addon">%</div></div>
          	</td>
          </tr>
          <tr>
          	<td colspan ="8" align="right">Tax Amount</td>
          	<td>
          		<input type="number" name='tax_amount' id="tax_amount" placeholder='0.00' class="form-control" value="<%=0.18*total%>" readonly/>
          	</td>
          </tr>
          <tr>
          	<td colspan ="8" align="right">Grand Total</td>
          	<td>
          		<input type="number" name='total_amount' id="total_amount" placeholder='0.00' class="form-control" value="<%=0.18*total+total%>" readonly/>
          	</td>
          </tr>
          <tr>
          	<td colspan ="9"> <input type="button" value="PDF" class="btn btn-warning" id="btnPrint" style="margin-left:10%;width : 80%; "/></td>
          </tr>
        </tbody>
        
        
   	</table>
   	
    </div>
  </div>


              
  
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("#btnPrint").live("click", function () {
            var divContents = $("#dvContainer").html();
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title></title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        }); 
      
    </script>
</body>
</html>