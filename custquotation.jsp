<%@page import="java.util.List"%>
<%@page import="com.pojo.Cart"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="com.pojo.customer"%>
<%@page import="com.pojo.Product"%>
<%@page import="com.pojo.Seller"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quotation</title>
</head>
<body>
<%
customer c = (customer) session.getAttribute("cust");
int id=c.getId();
String name=c.getName();
BlManager bl=new BlManager();

List<Cart> list=bl.getCartRecordByName3(name);
request.setAttribute("list",list);

List<Long> list1=bl.gettotal(name);
long total=list1.get(0);
int count=1;
%>
 <div id="dvContainer">
	<div align="right"><h2>Quotation</h2></div>	
	
	<table>
	<tr><th align="left">Mehta Sales Software</th></tr>
	<tr><th align="left">Ambience court</th></tr>
	<tr><th align="left">Quotation For:</th></tr>
	<tr><th align="left">Name:<%=c.getName() %></th></tr>
	<tr><th align="left">Address:<%=c.getAddress() %></th></tr>
	<tr><th align="left">Phone:<%=c.getContact() %></th></tr>
	</table>
	<br>
	<br>

<div class="container" align="center">
  <div class="row clearfix">
    <div class="col-md-12">
    
      <table class="table table-bordered table-hover" id="tab_logic">
        <thead>
          <tr>
            <th class="text-center"> # </th>
            <th class="text-center"> Product </th>
            <th class="text-center"> Quantity </th>
            <th class="text-center"> Price </th>
            <th class="text-center"> Total </th>
          </tr>
        </thead>
        <c:forEach items="${list}" var="c">
        <tbody>
          <tr id='addr0'>
            <td><%=count %></td>
            <td><input type="text" name="product" value="${c.getProductname()}" readonly/></td>
            <td><input type="text" name="quantity" value="${c.getQuantity()}" readonly/></td>
            <td><input type="text" name="price" value="${c.getPrice()}" readonly/></td>
            <td><input type="text" name="total" value="${c.getTotal()}" readonly></td>
          </tr>
          <%count++; %>
          <tr id='addr1'></tr>
        </tbody> 
        </c:forEach>
      </table>
      
    </div>
  </div>
<!--   <div class="row clearfix" style="margin-right:20%;" align="right">
    <div class="col-md-12">
      <button id="add_row" class="btn btn-default pull-left">Add Row</button>
      <button id='delete_row' class="pull-right btn btn-default">Delete Row</button>
    </div>
  </div> -->
  <div class="row clearfix" align="right">
    <div class="pull-right col-md-4">
      <table class="table table-bordered table-hover" id="tab_logic_total">
        <tbody>
          <tr>
            <th class="text-center">Sub Total</th>
            <td class="text-center"><input type="text" name='sub_total' class="form-control" id="sub_total" value="<%=total%>" readonly/></td>
          </tr>
          <tr>
            <th class="text-center">Tax</th>
            <td class="text-center"><div class="input-group mb-2 mb-sm-0">
                <input type="text" class="form-control" id="tax" name="tax" value="<%=18 %>" readonly>
                <div class="input-group-addon">%</div>
              </div></td>
          </tr>
          <tr>
            <th class="text-center">Tax Amount</th>
            <td class="text-center"><input type="text" name='tax_amount' id="tax_amount" class="form-control" value="<%=0.18*total%>" readonly/></td>
          </tr>
          <tr>
            <th class="text-center">Grand Total</th>
            <td class="text-center"><input type="text" name='total_amount' id="total_amount" class="form-control" value="<%=0.18*total+total%>" readonly/></td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>
</div>
               <input type="button" value="PDF" id="btnPrint"/>
  
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