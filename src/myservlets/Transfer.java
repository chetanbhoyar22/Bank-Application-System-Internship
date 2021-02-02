package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mybeans.DBConnector;

/**
 * Servlet implementation class Transfer
 */
@WebServlet("/Transfer")
public class Transfer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Transfer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ano1,ano2;
	     double am;
	     
	     ano1=request.getParameter("uid1");
	     ano2=request.getParameter("uid2");
	     am=Double.parseDouble(request.getParameter("amt"));
	     
	     PrintWriter out=response.getWriter();
	     Connection con;
	     PreparedStatement pst = null;
	     try {
	    	//Class.forName("com.mysql.cj.jdbc.Driver");
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankingdb? user=root&password=12345");
				
	    	 DBConnector dbc=new DBConnector();
	    	 con=dbc.getDbconnection();
	    	 	
			}
	     catch(Exception e)
	     {
	    	 out.println(e);
	     }

		
		
		
		
	}

}
