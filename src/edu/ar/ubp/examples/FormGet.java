package edu.ar.ubp.examples;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormGet extends HttpServlet {
	/**
	  
	   <html>
		<body>
			<form action="login" method="get">
				<table>
					<tr>
						<td>User</td>
						<td><input name="user" /></td>
					</tr>
					<tr>
						<td>password</td>
						<td><input name="password" /></td>
					</tr>
				</table>
				<input type="submit" />
			</form>
		</body>
		</html>
	  
	  
	  
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String user = req.getParameter("user");
		String pass = req.getParameter("password");
		if ("admin".equals(user) && "admin".equals(pass)) {
			response(resp, "login ok");
		} else {
			response(resp, "invalid login");
		}
	}

	private void response(HttpServletResponse resp, String msg)
			throws IOException {
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<t1>" + msg + "</t1>");
		out.println("</body>");
		out.println("</html>");
	}
}