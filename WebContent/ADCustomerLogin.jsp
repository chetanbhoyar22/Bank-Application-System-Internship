<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    <%@page import="mybeans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Active And Deactive Users Login</h2>
<hr>

<table width="500px" border="1" cellspacing="0" bordercolor="Black">
<tr style="background-color:Wheat">
<th>Account No. / UserID
<th>User Name
<th>User Status
</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
String no;

try
{
	//Class.forName("com.mysql.cj.jdbc.Driver");
	//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb?user=root&password=12345");
	
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection();
	
	pst=con.prepareStatement("select userid, usernm, userstatus from users;");
    rs=pst.executeQuery();
	while(rs.next())
	{
		no=rs.getString("userstatus");
		%>
		<tr>
		<td><%=rs.getString("userid") %>
		<td><%=rs.getString("usernm") %>
		<td><%=no %>
		</tr>		
	<%	
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</table>

</body>
</html>