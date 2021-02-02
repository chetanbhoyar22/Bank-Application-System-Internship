package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mybeans.DBConnector;

/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id,ps,ty;
		PrintWriter out=response.getWriter();
		id=request.getParameter("uid");
		ps=request.getParameter("psw");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try {
			
			//Class.forName("com.mysql.cj.jdbc.Driver");
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb? user=root&password=12345");
			
			DBConnector dbc=new DBConnector();
			con=dbc.getDbconnection();
			pst=con.prepareStatement("select * from users where userid=? and pswd=? and userstatus='Active';");
			pst.setString(1,id);
			pst.setString(2,ps);
			rs=pst.executeQuery();
			if (rs.next()) 
			{
				HttpSession ses=request.getSession(true);
				ses.setAttribute("userid",id);
			ty=rs.getString("usertype");
			if(ty.equals("Manager"))
				response.sendRedirect("Manager.jsp");
			else if(ty.equals("Cashier"))
				response.sendRedirect("Cashier.jsp");
			else
				response.sendRedirect("Customer.jsp");
		}
		else 
			   response.sendRedirect("Failure.jsp");
		      
			con.close();
	}
				catch(Exception e)
			{
				out.println(e);
			}
	}
}
