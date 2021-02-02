<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="mybeans.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String no=request.getParameter("ano");
%>
<h2>Deleting account <%=no %>...</h2>
<hr>
<%
Connection con;
PreparedStatement pst;
try
{
	//Class.forName("com.mysql.cj.jdbc.Driver");
	//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb?user=root&password=12345");
	
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection();
	
	pst=con.prepareStatement("delete from accounts where accno=?;");
	pst.setString(1,no);
	int i=pst.executeUpdate();
	if(i>0)
			{
		out.println("Account Deleted..");
			}
	else{
		out.println("Account is Not Deleted");
	    }
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
<br>
<br>
<a href="Manager.jsp">Home</a>

</body>
</html>