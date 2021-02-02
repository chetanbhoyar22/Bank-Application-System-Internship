<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<img src="paymentbanner.png" height="200px">
<h2>Online Transaction Application in Eclipse</h2>
<hr>
<form name="frm" method="post" action="Check">
<table>
<tr>
<td>UserID
<td><input type="text" name="uid">
</tr>
<tr>
<td>Password
<td><input type="password" name="psw">
</tr>
<tr>
<td><input type="submit" value="Submit">
</tr>
</table>
</form>
<br>
<a href="NewUser.html">New user? Register now</a>
<br> 
<a href="RecoverPassword.html">Forget Password? Recover now</a>
<br>
<a href="AccountsList">Account holder list</a>
<br>
<a href="UserChoice.html">Take user choice</a>
<br>
<a href="ShowCookies.jsp">Show my cookies</a>
<br>
<a href="TryJSPTags.jsp">Try JSP tags</a>
<br>
<a href="PaymentOptions.html">Pay your cloud rent</a>
<br>
<a href="Billing.html">Test Bean for Billing</a>
<br>
<a href="SearchAccount.html">Search Account Info using Bean</a>
<br>
<a href="MarchEnd.html">Calculate Income tax using Bean</a>
<br>
<hr>
Powered by JavaEE
<br>
</body>
</html>