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

<table width="500px" border="1" cellspacing="0" bordercolor="blue">
<tr style="background-color:yellow">
<th>Account No.
<th>Account Name
<th>Account Type
<th>Account Balance
<th>Opening Date
</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;
String no=request.getParameter("acn");
try
{
	//Class.forName("com.mysql.cj.jdbc.Driver");
	//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb?user=root&password=12345");
	
	DBConnector dbc=new DBConnector();
	con=dbc.getDbconnection();
	
	pst=con.prepareStatement("select * from accounts where accno=?;");
	pst.setString(1,no);
    rs=pst.executeQuery();
    if(rs.next())
	{
		no=rs.getString("accno");
		%>
		<tr>
		<td><%=no %>
		<td><%=rs.getString("accnm") %>
		<td><%=rs.getString("acctype") %>
		<td><%=rs.getString("balance") %>
		<td><%=rs.getString("opendate") %>
	    
	    </tr>		
	<%	
}
    else{
    	out.println("<h3>Enter Correct Account Number OR Account Not Match Found...</h3>");
        }
}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
<br>
<br>
<a href="Cashier.jsp">Home</a>
</body>
</html>