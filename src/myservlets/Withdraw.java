package myservlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import mybeans.DBConnector;

/**
 * Servlet implementation class Withdraw
 */
@WebServlet("/Withdraw")
public class Withdraw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Withdraw() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String tno,ano,typ;
	     double am;
	     
	     tno=request.getParameter("trno");
	     ano=request.getParameter("uid");
	     typ=request.getParameter("ty");
	     am=Double.parseDouble(request.getParameter("amt"));
	     
	     PrintWriter out=response.getWriter();
	     Connection con;
	     PreparedStatement pst;
	     try {
	    	//Class.forName("com.mysql.cj.jdbc.Driver");
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb? user=root&password=12345");
				
	    	 DBConnector dbc=new DBConnector();
	    	 con=dbc.getDbconnection();
	    	 
	    	 pst=con.prepareStatement("insert into acctransactions values(?,now(),?,?,?);");
				pst.setString(1,tno);
				pst.setString(2,ano);
				pst.setString(3,typ);
				pst.setDouble(4,am);
				pst.executeUpdate(); 
				
				if(typ.equalsIgnoreCase("Withdraw"))
				{
				    pst=con.prepareStatement("update accounts set balance=balance-? where accno=?;");
				    out.println("<h3>Balance Updated Successfully</h3>");
				    out.println("<hr>");
				    out.println("<a href='Cashier.jsp'>Home</a>");
               }
				else
				{
					out.println("<h3>You Have Enter Wrong Transaction Type...</h3>");
					out.println("<br>");
				    out.println("<a href='Cashier.jsp'>Home</a>");

				}
	
				pst.setDouble(1,am);
				pst.setString(2,ano);
				pst.executeUpdate();
				con.close();
	      }
	     catch(Exception e)
	     {
	    	 out.println("<h3>Transaction Failed... Check Transaction Number OR Account Number is Wrong</h3>");
	    	 out.println("<br>");
			 out.println("<a href='Cashier.jsp'>Home</a>");
	     }

	}

}
