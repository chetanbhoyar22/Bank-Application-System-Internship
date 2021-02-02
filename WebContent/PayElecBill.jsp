<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Pay Electric Bill Rent</h2>
<hr>
<form name="frm" method="post" action="Pay.jsp">
<table>
<tr>
<td>Customer Name 
<td><input type="text" name="nm" required>
</tr>
<tr>
<td>Electric Bill Number 
<td><input type="text" name="bno" required>
</tr>
<tr>
<td>House Number 
<td><input type="text" name="hno" required>
</tr>
<tr>
<td>Amount 
<td><input type="text" name="amt" required>
</tr>
<tr>
<td>Mobile Number
<td><input type="number" name="mob" required>
</tr>
<tr>
<td>Mode 
<td><input type="radio" name="opt" value="Netbanking">TCB Online
<td><input type="radio" name="opt" value="Credit">Credit Card
</tr>
<tr>
<td><br><input type="submit" value="Submit">
</tr>
</table>
</form>
</body>
</html>