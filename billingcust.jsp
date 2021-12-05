<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="org.w3c.dom.ls.LSInput"%>
<%@page import="com.Modal.BlManager"%>
<%@page import="java.util.List"%>
<%@page import="com.pojo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		BlManager bl = new BlManager();
		String Billing = "Billing";
		List<Cart> list = bl.getCartRecordByApply(Billing);
		Set<String> s = new HashSet<String>();
		List<String> list1 = new ArrayList<String>();
		for (Cart c : list) {
			list1.add(c.getCustomername());
		}
		for (String s1 : list1) {
			if (s.add(s1)) {
	%>
	<table border="1" width="50%" align="center">
		<tr>
			<th align="center" width="50%">Name</th>
			<td align="center" rowspan="2"><a href="billingupdate.jsp?customername=<%=s1%>">Billing</a></td>
		</tr>
		<tr>
			<td width="50%" align="center"><%=s1%></td>
		</tr>
	</table>
	<%
		}
		}
	%>


</body>
</html>