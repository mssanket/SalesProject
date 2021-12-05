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
</head>
<body>
<%
BlManager bl=new BlManager();
String apply="Billing";
String customername=request.getParameter("customername");
customer c=bl.getRecordByName(customername);

List<Cart> list=bl.getCartRecordByApply(customername, apply);
for (Cart cart : list) {
	int warranty=cart.getWarranty();
	String productname=cart.getProductname();
	Calendar now = Calendar.getInstance();

	String warrantystartdate=(now.get(Calendar.DATE) )+"-"+(now.get(Calendar.MONTH)+1)+"-"+now.get(Calendar.YEAR);

	now.add(Calendar.MONTH,warranty);

	String warrantyenddate = (now.get(Calendar.DATE) )+"-"+(now.get(Calendar.MONTH)+1)+"-"+now.get(Calendar.YEAR);

	Cart cart1=new Cart();
	cart1.setWarrantystartdate(warrantystartdate);
	cart1.setWarrantyenddate(warrantyenddate);
	bl.savewarranty(productname, warrantystartdate, warrantyenddate);
}
response.sendRedirect("billing.jsp?customername="+customername);  

%>
</body>
</html>