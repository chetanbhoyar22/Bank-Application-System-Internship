package myservlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybeans.DBConnector;

import java.sql.*;
import java.io.*;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id,ps,nm,gn,ct,mo,em,sq,an;
		int ag;
		
		id=request.getParameter("uid");
		ps=request.getParameter("psw");
		nm=request.getParameter("unm");
		ag=Integer.parseInt(request.getParameter("age"));
		gn=request.getParameter("gen");
		ct=request.getParameter("cit");
		mo=request.getParameter("mob");
		em=request.getParameter("eml");
		sq=request.getParameter("sec");
		an=request.getParameter("ans");
		
		
				
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		try {
			//Class.forName("com.mysql.cj.jdbc.Driver");
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb? user=root&password=12345");
			
			DBConnector dbc=new DBConnector();
			con=dbc.getDbconnection();
			
			pst=con.prepareStatement("insert into users values(?,?,?,default,default);");
			pst.setString(1,id);
			pst.setString(2,ps);
			pst.setString(3,nm);
			pst.executeUpdate();
			
			pst=con.prepareStatement("insert into userpersonal values(?,now(),?,?,?,?,?,?,?);");
			pst.setString(1, id);
			pst.setInt(2, ag);
			pst.setString(3, gn);
			pst.setString(4, ct);
			pst.setString(5, mo);
			pst.setString(6, em);
			pst.setString(7, sq);
			pst.setString(8, an);
			pst.executeUpdate();
			
			out.println("<h3>User Registration Successfully</h3><hr>");
			out.println("<a href='index.jsp'>Home</a>");
			con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
					
		}
		
	}


