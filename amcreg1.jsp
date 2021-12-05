 <%@page import="com.pojo.Cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="java.text.SimpleDateFormat,java.util.Calendar,java.text.ParseException,
java.util.*,com.pojo.*,com.Modal.*, java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><button><h3><a href="custdashboard.jsp">customer page</a></h3></button></center>

<%
 BlManager bl = new BlManager();
Cart c=new Cart();
customer cust = (customer) session.getAttribute("cust");
String cname=request.getParameter("name");
int price=Integer.parseInt(request.getParameter("pp"));

int id=Integer.parseInt(request.getParameter("id"));
String pname=request.getParameter("pname");
double amcprice=Double.parseDouble(request.getParameter("amcprice"));

//---------------------------New Warranty Startdate---------------------
int newwarranty=Integer.parseInt(request.getParameter("newwarranty"));
String wed = request.getParameter("warrantyenddate");  
System.out.println("Date before Addition: "+wed);
SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
Calendar c1 = Calendar.getInstance();
c1.setTime(sdf.parse(wed));
c1.add(Calendar.DAY_OF_MONTH, 1);  
String newstartdate = sdf.format(c1.getTime());  
System.out.println("Date after Addition: "+newstartdate);

//---------------------------------------New Warranty Enddate--------------
String ned = request.getParameter("warrantyenddate");  
System.out.println("Date before Addition: "+ned);
SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy");
Calendar c2 = Calendar.getInstance();
c2.setTime(sdf1.parse(ned));
c2.add(Calendar.DAY_OF_MONTH, 1);
c2.add(Calendar.MONTH, newwarranty);  
String newenddate = sdf1.format(c2.getTime());  
System.out.println("Date after Addition: "+newenddate);
//----------------------------------------------------



//----------------------------------------
c.setAmcprice(amcprice);
c.setNewstartdate(newstartdate);
c.setNewenddate(newenddate);
c.setNewwarranty(newwarranty);

bl.savenewwarranty(id,amcprice,newwarranty, newstartdate, newenddate);

 %>
 
 <CENTER>
 <table border=5 bgcolor="biege" height="300" width=400 >
 <caption><h2><font color="blue" >Metha Software <br>AMC File</font></h2></caption>
 <tr><td>Cart id:</td><td><input type="text" name="id" value="<%=id%>" disabled="disabled">
<tr><td>customer Name:</td><td><input type="text" name="name" value="<%=cname%>" disabled="disabled">
 <tr><td>product name:</td><td><input type="text" name="pname" value="<%=pname%>" disabled="disabled">
<tr><td>product price</td><td><input type="text" name="pp" value="<%=price%>" disabled="disabled">
<tr><td>Extended warranty</td><td><input type="text" name="newwarranty" value="<%=newwarranty%>" disabled="disabled">
<tr><td>Amc total Amount</td><td><input type="text" name="amcprice" value="<%=amcprice%>" disabled="disabled">
<tr><td>Warranty From</td><td><input type="text" name="newstartdate" value="<%=newstartdate%>" disabled="disabled">
<tr><td>Warranty To</td><td><input type="text" name="newenddate" value="<%=newenddate%>" disabled="disabled">

</table>
</CENTER>
</tr>
</table>
</body>
</html> 