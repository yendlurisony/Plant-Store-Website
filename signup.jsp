<%@ page import="java.sql.*" %>
<%
		String email=request.getParameter("email");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String address=request.getParameter("reset");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=
			DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","cherry07");
			String qry="insert into signup values(?,?,?,?,?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(qry);
			pstmt.setString(1,name);
			pstmt.setString(2,username);
			pstmt.setString(3,password);
			pstmt.setInt(4,age);
			pstmt.setString(5,gender);
			pstmt.setString(6,address);
			pstmt.setLong(7,phone);
			pstmt.executeUpdate();
			 con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        out.print("<html><body bgcolor=lightgreen>");
        out.print("<marquee><h2>Registration successful!</h2></marquee>");
        out.print("<br>");
	out.print("<br>");
        out.print("<b>Thank you for registering with Groco</b>");
        out.print("</body></html>");
		out.print("<br>");

		out.print("<a href='display.jsp'>Click to See User Registrations</a>");
		out.print("<br>");
        out.print("<br>");
	    out.print("<br>");
		out.print("<h1><b><a href='login.html'>Click here to Login</a></b></h1>");

%>
                