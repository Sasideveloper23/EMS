package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/delete" )
public class DeleteServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		
		
	
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
				PreparedStatement ps=con.prepareStatement("delete from emp where id=?");
				ps.setInt(1, id);
				int row=ps.executeUpdate();
				System.out.println(row+" row id deleted");
				
				
				ps.close();
				con.close();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			PrintWriter pw=resp.getWriter();
			pw.write("<html><body><h2>Employee Deleted successfully with id: "+id+"</h2></body></html>");
		

			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","root");
				Statement s=con.createStatement();
				ResultSet rs=s.executeQuery("select * from emp");
				
				
				req.setAttribute("rs",rs);
				RequestDispatcher rd=req.getRequestDispatcher("allemp.jsp");
				rd.include(req, resp);
				
				rs.close();
				s.close();
				con.close();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
