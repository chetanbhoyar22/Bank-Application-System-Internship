<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style bgcolor="silver">
<h2><font color="red">Transfer Amount</font></h2>
<hr>
<h2><font color="purple">Debit Section</font></h2>
<form name="frm" method="post" action="Transfer">
<table>
<tr>
<td>Account Number
<td><input type="text" name="uid" required>
</tr>
<tr>
<td>Account Holder Name
<td><input type="text" name="unm" required>
<tr>
<td>Amount
<td><input type="number" name="bal" required>
</tr>
</table>
<h1><font color="green">To</font></h1>
<h2><font color="purple">Credit Section</font></h2>
<table>
<tr>
<td>Account Number
<td><input type="text" name="uid" required>
</tr>
<tr>
<td>Account Holder Name
<td><input type="text" name="unm" required>
</tr>
<tr>
<td>Amount
<td><input type="number" name="bal" required>
</tr>
<td><br><input type="submit" value="Transfer">
</tr>
<table>
</body>
</html>