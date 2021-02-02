<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Change Password Form</h2>
<hr>
<form name="frm" method="post" action="Change">
<table>
<tr>
<td>UserID
<td><input type="text" name="uid">
</tr>
<tr>
<td>Current password
<td><input type="password" name="curps">
</tr>
<tr>
<td>New Password
<td><input type="password" name="newps">
</tr>
<tr>
<td>Confirm password
<td><input type="password" name="conps">
</tr>
<tr>
<td><input type="submit" value="Submit">
<td>
</tr>
</table>
</form>
</body>
</html>