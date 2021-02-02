<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body Style bgcolor="PaleGoldenRod">
<%
if(session.getAttribute("userid")!=null)
{
%>
<%
String uid=String.valueOf(session.getAttribute("userid"));
%>
<h2 Style="color:Purple">Customer Panel</h2>
Logged in as : <%=uid %>
<br>
Session ID : <%=session.getId() %> 
<hr>
<a href="AccStatement.jsp">Account Statement</a> |
<a href="TrfAmt.jsp">Transfer Amount</a>
<br> 
<a href="PayElecBill.jsp">Pay Electric Bill</a> |
<a href="Recharge.jsp">Recharge</a>
<br>
<a href="ChangePassword.jsp">Change Password</a> 
<br><br>
<h3><a href="Logout.jsp">Logout</a></h3>
<%
}
else
{
	%>
	<h3 style="color:red">Invalid session</h3>
	<a href="index.jsp">Login now</a>
	
	<%
}
%>
</body>
</html>