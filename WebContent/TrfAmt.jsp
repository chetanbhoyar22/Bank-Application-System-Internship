<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2><font color="Plum">Transfer Amount Page</font></h2>
<hr>
<br>
<form name="frm" method="post" action="Transfer">
<table>
<tr>
<td> From Account Number
<td><input type="text" name="uid1" required>
</tr>
<tr>
<td>To Account Number
<td><input type="text" name="uid2" required>
</tr>
<tr>
<td>Transfer Amount
<td><input type="number" name="bal" required>
</tr>
<tr>
<td><br><input type="submit" value="Transfer">
</tr>
</table>
</form>
</body>
</html>