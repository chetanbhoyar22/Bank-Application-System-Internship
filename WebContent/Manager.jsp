<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body Style bgcolor="MintCream">
<%
if(session.getAttribute("userid")!=null)
{
%>
<%
String uid=String.valueOf(session.getAttribute("userid"));
%>
<h2 Style="color:Orange">Manager (Admin Panel)</h2>
Logged in as : <%=uid %>
<br>
Session ID : <%=session.getId() %> 
<hr>
<a href="OpenNewAccount.html">Open New Account</a> |
<a href="CloseAccount.jsp">Close Account</a>
<br> 
<a href="SearchAccountForm(Mng).html">Search Account Form</a> |
<a href="TrfAmt.jsp">Transfer Amount</a>
<br>
<a href="DailyTransactionReport.jsp">Daily Transaction Report</a> |
<a href="ADCustomerLogin.jsp">Active Deactive Customer Login</a>
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