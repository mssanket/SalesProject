<%@page import="java.util.List"%>
<%@page import="com.pojo.Cart"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="com.pojo.customer"%>
<%@page import="com.pojo.Product"%>
<%@page import="com.pojo.Seller"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quotation</title>
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>

<%
int id=Integer.parseInt(request.getParameter("id"));
customer c=BlManager.getRecordById(id);
String name=c.getName();
session.setAttribute("name", name);
%>

<%
BlManager bl=new BlManager();
List<Cart> list=bl.getCartRecordByName3(name);
request.setAttribute("list",list);

List<Long> list1=bl.gettotal(name);
long total=list1.get(0);                                    
%>
<div id="dvContainer">
	<div align="right" style="margin-right: 200px"><h2>Quotation</h2></div>	
	
	<table style="margin-left: 200px">
	<tr><th align="left">Mehta Sales Software</th></tr>
	<tr><th align="left">Ambient court</th></tr>
	<tr><th align="left">Quotation For:</th></tr>
	<tr><th align="left">Name:<%=c.getName() %></th></tr>
	<tr><th align="left">Address:<%=c.getAddress() %></th></tr>
	<tr><th align="left">Phone:<%=c.getContact() %></th></tr>
	</table>
	<br>
	<br>

<div class="container"  align="center">
  <div class="row clearfix">
    <div class="col-md-12">
    
      <table class="table table-bordered table-hover" id="tab_logic">
        <thead>
          <tr>
            <th class="text-center"> # </th>
            <th class="text-center"> Product </th>
            <th class="text-center"> Qty </th>
            <th class="text-center"> Price </th>
            <th class="text-center"> Total </th>
          </tr>
        </thead>
        
        <tbody>
        <c:forEach items="${list}" var="c">
          <tr id='addr0'>
            <td>1</td>
            <td><input type="text" name='product[]'  placeholder='Enter Product Name' class="form-control" value="${c.getProductname()}" readonly/></td>
            <td><input type="number" name='qty[]' placeholder='Enter Qty' class="form-control qty" value="${c.getQuantity()}" readonly/></td>
            <td><input type="number" name='price[]' placeholder='Enter Unit Price' class="form-control price" value="${c.getPrice()}" readonly/></td>
            <td><input type="number" name='total[]' placeholder='0.00' class="form-control total" value="${c.getTotal()}" readonly></td>
          </tr>
          
          </c:forEach>
          <tr>
          	<td colspan = "4" align = "right">SubTotal</td>
          	<td>
          		<input type="number" name='sub_total' placeholder='0.00' class="form-control" id="sub_total" value="<%=total%>" readonly/>
          	</td>
          </tr>
          <tr>
          	<td  colspan = "4" align = "right">Tax</td>
          	<td>
                <div class="input-group mb-2 mb-sm-0">
                <input type="number" class="form-control" id="tax" placeholder="0" name="tax" value="<%=18 %>" readonly>
                <div class="input-group-addon">%</div>
          	</td>
          </tr>
          <tr>
          	<td  colspan = "4" align = "right">Tax Amount</td>
          <td>
          	<input type="number" name='tax_amount' id="tax_amount" placeholder='0.00' class="form-control" value="<%=0.18*total%>" readonly/>
          </td>
          </tr>
          <tr>
          	<td  colspan = "4" align = "right">Grand Total</td>
          	<td><input type="number" name='total_amount' id="total_amount" placeholder='0.00' class="form-control" value="<%=0.18*total+total%>" readonly/></td>
          </tr>
          <tr>
          <td colspan="6">
           <input type="button" class="btn btn-warning" value=" PrintPDF" id="btnPrint" style="margin-left:10%; width : 80%"/>
          </td>
          </tr>
        </tbody>
      </table>
      
    </div>
  </div>
 <%-- 
  <div class="row clearfix" style="margin-right:20%;" align="right">
    <div class="pull-right col-md-4">
    <div align="right">
      <table class="table table-bordered table-hover" id="tab_logic_total">
        <tbody>
          <tr>
            <th class="text-center">Sub Total</th>
            <td class="text-center"><input type="number" name='sub_total' placeholder='0.00' class="form-control" id="sub_total" value="<%=total%>" readonly/></td>
          </tr>
          <tr>
            <th class="text-center">Tax</th>
            <td class="text-center"><div class="input-group mb-2 mb-sm-0">
                <input type="number" class="form-control" id="tax" placeholder="0" name="tax" value="<%=18 %>" readonly>
                <div class="input-group-addon">%</div>
              </div></td>
          </tr>
          <tr>
            <th class="text-center">Tax Amount</th>
            <td class="text-center"><input type="number" name='tax_amount' id="tax_amount" placeholder='0.00' class="form-control" value="<%=0.18*total%>" readonly/></td>
          </tr>
          <tr>
            <th class="text-center">Grand Total</th>
            <td class="text-center"><input type="number" name='total_amount' id="total_amount" placeholder='0.00' class="form-control" value="<%=0.18*total+total%>" readonly/></td>
          </tr>
        </tbody>
      </table>
      </div>
    </div>
  </div> --%>
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