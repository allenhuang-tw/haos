package com.haos.comm.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class dbServlet
 */
@WebServlet("/dbServlet")
public class dbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = "root";
		String password = "123456";
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/haos?useSSL=false&serverTimezone=UTC";
		
		String driver = "com.mysql.jdbc.Driver";
		
		try{
			PrintWriter out = response.getWriter();
			
			out.println("Connecting to database: " + jdbcUrl);
			Class.forName(driver);
			Connection myCon = DriverManager.getConnection(jdbcUrl, user, password);
			out.println("SUCCESS");
			myCon.close();
		}catch(Exception e){
			e.printStackTrace();
			throw new ServletException();
		}
		
		
	}

}
