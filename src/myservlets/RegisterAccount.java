package myservlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.io.*;
import mybeans.DBConnector;
/**
 * Servlet implementation class RegisterAccount
 */
@WebServlet("/RegisterAccount")
public class RegisterAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterAccount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id,nm,typ;
		double balance;
		
		id=request.getParameter("uid");
		nm=request.getParameter("unm");
		typ=request.getParameter("ty");
		balance=Double.parseDouble(request.getParameter("bal"));
				
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		try {
			//Class.forName("com.mysql.cj.jdbc.Driver");
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb? user=root&password=12345");
			
			DBConnector dbc=new DBConnector();
			con=dbc.getDbconnection();
			
			pst=con.prepareStatement("insert into accounts values(?,?,?,?,now());");
			pst.setString(1,id);
			pst.setString(2,nm);
			pst.setString(3,typ);
			pst.setDouble(4,balance);
			pst.executeUpdate();
			
			out.println("<h3>User Registration Successfully</h3><hr>");
			out.println("<a href='Manager.jsp'>Home</a>");
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}

	}

}
