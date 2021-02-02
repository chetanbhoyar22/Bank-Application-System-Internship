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
<%
String uid=String.valueOf(session.getAttribute("userid"));
%>
<h2>Account Statement For <%=uid %></h2>
<hr>
<br>
<table width="450px" border="1" cellspacing="0" bordercolor="azure">
<tr style="background-color:Plum">
<th>Transaction Number
<th>Transaction Date
<th>Account Number
<th>Transaction Type
<th>Amount
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
	pst=con.prepareStatement("select * from acctransactions where accno=?;");
	pst.setString(1,uid);
	rs=pst.executeQuery();
    
	while(rs.next())
		{
			no=rs.getString("accno");
			%>
			<tr>
			<td><%=rs.getString("transno") %>
			<td><%=rs.getDate("transdt") %>
			<td><%=no %>
			<td><%=rs.getString("trsctype") %>
			<td><%=rs.getDouble("amount") %>
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