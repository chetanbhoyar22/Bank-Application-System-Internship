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
<h2>Daily Transaction Report</h2>
<hr>
<br>
<table width="500px" border="1" cellspacing="0" bordercolor="blue">
<tr style="background-color:yellow">
<th>Transaction Date
<th>Account Number
<th>Transaction Type
<th>Amount
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
	
	pst=con.prepareStatement("select transdt, accno, trsctype, amount from acctransactions where transdt=curdate();");
    rs=pst.executeQuery();
    if(rs.next())
	{
    	no=rs.getString("accno");
		%>
		<tr>
		<td><%=rs.getDate("transdt") %>
		<td><%=no %>
		<td><%=rs.getString("trsctype") %>
		<td><%=rs.getString("amount") %>
	    
	    </tr>		
	<%	
}
    else{
    	out.println("<h3>No Transaction Will Be Perform OR No Transaction Found...</h3>");
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