<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@page import="com.Modal.BlManager"%> 
    <%@page import="com.pojo.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

        
<%

 BlManager bl = new BlManager();
Salarypayroll s = new Salarypayroll();

int staffid=Integer.parseInt(request.getParameter("staffid"));
String name=request.getParameter("name");
double noofhalfdays=Double.parseDouble(request.getParameter("noofhalfdays"));
double nooffulldays=Double.parseDouble(request.getParameter("nooffulldays"));
int noofdaysworked=Integer.parseInt(request.getParameter("noofdaysworked"));
int totalsalary=Integer.parseInt(request.getParameter("totalsalary"));
int totalnoofDay=Integer.parseInt(request.getParameter("totalnoofDay"));
double totalsalaryofmonth=Double.parseDouble(request.getParameter("totalsalaryofmonth"));
double servicetax=Double.parseDouble(request.getParameter("servicetax"));
double perdaysalary=totalsalary/totalnoofDay;
double halfdaysleave=perdaysalary/2;         
double fulldayleave=perdaysalary;            
double leave=fulldayleave+halfdaysleave;
double fulldaydeduction=fulldayleave*nooffulldays;        
double halfdaysdeduction=halfdaysleave*noofhalfdays;         
double deduction =fulldaydeduction+halfdaysdeduction+servicetax;  
double netpay=totalsalaryofmonth-deduction;      

s.setStaffid(staffid);
s.setName(name);
s.setNoofhalfdays(noofhalfdays);
s.setNooffulldays(nooffulldays);
s.setHalfdaysleave(halfdaysleave);
s.setFulldaysleave(fulldayleave);
s.setHalfdaysdeduction(halfdaysdeduction);
s.setFulldaysdeduction(fulldaydeduction);
s.setPerdaysalary(perdaysalary);
s.setTotalsalaryofmonth(totalsalaryofmonth);
s.setServicetax(servicetax);
s.setDeduction(deduction);
s.setNetpay(netpay);
s.setNoofdaysworked(noofdaysworked);
s.setTotalnoofDay(totalnoofDay);
bl.SaveStaffSalary(s);



%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <CENTER>
 <table border=5 bgcolor="biege" height=600 width=400 >
 <caption><h2><font color="blue" >Metha Software <br>SALARY STATEMENT</font></h2></caption>
 <tr><td>Staff Id:</td><td><input type="text" name="staffid" value="<%=staffid%>" disabled="disabled">
<tr><td>Staff Name:</td><td><input type="text" name="name" value="<%=name%>" disabled="disabled">
<tr><td>No Of Half Days leave:</td><td><input type="text" name="noofhalfdays" value="<%=noofhalfdays%>" disabled="disabled">
<tr><td>No Of Full Days leave:</td><td><input type="text" name="nooffulldays" value="<%=nooffulldays%>" disabled="disabled">
<tr><td>Half Per Days leave:</td><td><input type="text" name="halfdaysleave" value="<%=halfdaysleave%>" disabled="disabled">
<tr><td>Full Per Days leave:</td><td><input type="text" name="fulldayleave" value="<%=fulldayleave%>" disabled="disabled">
<tr><td>Half Days Deduction:</td><td><input type="text" name="halfdaysdeduction" value="<%=halfdaysdeduction%>" disabled="disabled">
<tr><td>Full Days Deduction:</td><td><input type="text" name="fulldaydeduction" value="<%=fulldaydeduction%>" disabled="disabled">
<tr><td>Number of days Worked:</td><td><input type="text" name="noofdaysworked" value="<%=noofdaysworked%>" disabled="disabled">
<tr><td>totalsalary:</td><td><input type="text" name="totalsalary" value="<%=totalsalary%>" disabled="disabled">
<tr><td>perdaysalary:</td><td><input type="text" name="perdaysalary" value="<%=perdaysalary%>" disabled="disabled">
<tr><td>totalnoofDay:</td><td><input type="text" name="totalnoofDay" value="<%=totalnoofDay%>" disabled="disabled">
<tr><td>Total Salary Of Month:</td><td><input type="text" name="totalsalaryofmonth" value="<%=totalsalaryofmonth%>" disabled="disabled">
<tr><td>professiona Tax:</td><td><input type="text" name="servicetax" value="<%=servicetax%>" disabled="disabled">
<tr><td>Total Deduction:</td><td><input type="text" name="deduction" value="<%=deduction%>" ></td></tr>
<tr><td>Net Pay (After Deductions):</td><td><input type="text" name="netpay" value="<%=netpay%>"></td></tr>
</table>
</CENTER>
<a href="dashboard.jsp">Home</a>
</body>
</html>