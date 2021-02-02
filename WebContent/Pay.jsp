<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
double amt;
String mode,nm,bno,hno;
nm=request.getParameter("nm");
bno=request.getParameter("bno");
hno=request.getParameter("hno");
amt=Double.parseDouble(request.getParameter("amt"));
mode=request.getParameter("opt");

if(mode.equals("Netbanking"))
{
%>
<jsp:forward page="TCBOnline.jsp">
<jsp:param name="Customer Name" value="<%=nm %>"/>
<jsp:param name="Electric Bill Number" value="<%=bno %>"/>
<jsp:param name="House Number" value="<%=hno %>"/>
<jsp:param name="Amount" value="<%=amt%>"/>
</jsp:forward>
<%
}
else
{
%>
<jsp:forward page="Credit.jsp">
<jsp:param name="Customer Name" value="<%=nm %>"/>
<jsp:param name="Electric Bill Number" value="<%=bno %>"/>
<jsp:param name="House Number" value="<%=hno %>"/>
<jsp:param name="Amount" value="<%=amt%>"/>
</jsp:forward>
<%
}
%>
</body>
</html>