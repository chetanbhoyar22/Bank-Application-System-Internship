<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body Style bgcolor="Moccasin">
<%
if(session.getAttribute("userid")!=null)
{
%>
<%
String uid=String.valueOf(session.getAttribute("userid"));
%>
<h2 Style="color:green">Cashier Panel</h2>
Logged in as : <%=uid %>
<br>
Session ID : <%=session.getId() %> 
<hr>
<a href="SrchAccInfoFrm(Csh).html">Search Account Info Form</a>
<br><br>
<a href="Deposit.html">Deposit</a> |
<a href="Withdraw.html">Withdraw</a>
<br>
<a href="TrfAmt.jsp">Transfer Amount</a> |
<a href="DailyTransactionReport.jsp">Daily Transaction Report</a>
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