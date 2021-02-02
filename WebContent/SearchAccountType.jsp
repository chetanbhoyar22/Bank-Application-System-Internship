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
<h2>Searching Account Information</h2>
<hr>

<table width="500px" border="1" cellspacing="0" bordercolor="azure">
<tr style="background-color:seashell">
<th>Account No.
<th>Account Name
<th>Account Type
<th>Account Balance
<th>Opening Date
<th>Action
</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
String ty=request.getParameter("typ");
String no;

try
{
	//Class.forName("com.mysql.cj.jdbc.Driver");
	//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb?user=root&password=12345");
	
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection();
	
	pst=con.prepareStatement("select * from accounts where acctype=?;");
	pst.setString(1,ty);
	
	
	rs=pst.executeQuery();
	while(rs.next())
	{
		no=rs.getString("accno");
		%>
		<tr>
		<td><%=no %>
		<td><%=rs.getString("accnm") %>
		<td><%=rs.getString("acctype") %>
		<td><%=rs.getString("balance") %>
		<td><%=rs.getDate("opendate") %>
		
		<td><a href="DeleteAccount.jsp?ano=<%=no%>">Delete</a>
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