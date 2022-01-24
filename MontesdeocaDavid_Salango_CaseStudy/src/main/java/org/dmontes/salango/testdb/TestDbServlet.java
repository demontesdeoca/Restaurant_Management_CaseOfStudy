package org.dmontes.salango.testdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

/**
 * Servlet implementation class TestDbServlet
 */
@WebServlet("/TestDbServlet")
public class TestDbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// setup connection variables
		String user = "userdb_demp";
		String pass = "userdb_demp";
		
		/* mySQL
		 * String jdbcUrl = jdbc:mysql://localhost:3305/salango?useSSL=false&serverTimezone=UTC"; 
		 * String driver = "com.mysql.cj.jdbc.Driver";
		 */

		String jdbcUrl = "jdbc:mariadb://localhost:3306/salango";
		String driver = "org.mariadb.jdbc.Driver";

		// get connection to database
		PrintWriter out=null;
		try {
			 out = response.getWriter();

			out.println("Connecting to database: " + jdbcUrl);

			Class.forName(driver);

			Connection myConn = DriverManager.getConnection(jdbcUrl, user, pass);

			out.println("SUCCESS!!!");

			myConn.close();

		} catch (Exception exc) {
			StringWriter sw = new StringWriter();
			PrintWriter pw = new PrintWriter(sw);
			exc.printStackTrace(pw);
			String sStackTrace = sw.toString(); // stack trace as a string
			System.out.println(sStackTrace);
			out.println(sStackTrace);
			throw new ServletException(exc);
		}

	}

}
