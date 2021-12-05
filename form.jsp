<%@page import="com.Modal.randomnum"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="com.pojo.*"%>
<%@page import="com.Controller.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
BlManager bl=new BlManager();
randomnum rd=new randomnum();
customer c1=(customer)session.getAttribute("cust");

int customerno=c1.getId();
String cpname =c1.getName();
String address =c1.getAddress();
String complaintdate=df.format(new Date());
long mob=Long.parseLong(c1.getContact());
String email =c1.getEmail();

long productno =Long.parseLong(request.getParameter("productno"));
String complaintnature =request.getParameter("complaintnature");

String random=rd.nextString();

complaint c=new complaint();
c.setCustomerno(customerno);
c.setCpname(cpname);
c.setAddress(address);
c.setComplaintdate(complaintdate);
c.setEmail(email);
c.setMobileno(mob);

c.setProductno(productno);
c.setComplaintnature(complaintnature);

c.setComplaintrefno(random);

bl.savecomplaint(c);
%>
<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script>
$(document).ready(function(){
	swal ( 'Complaint Registered' ,  '' ,  'success' );
});
<%
RequestDispatcher rd1 = request.getRequestDispatcher("mycomplaint.jsp");
rd1.include(request, response);
%>
</script>
</body>
</html>