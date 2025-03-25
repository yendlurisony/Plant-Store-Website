<%@ page import="java.sql.*" %>
<%
    String un = request.getParameter("username");
    String pass= request.getParameter("password");
    try
    {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "cherry07");
        String qry = "select * from signup where username=? and password=?";
        PreparedStatement pstmt = con.prepareStatement(qry);
        pstmt.setString(1, un);
        pstmt.setString(2, pass);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next())
        {
            session.setAttribute("username", un); 
            response.sendRedirect("home.jsp"); 
        }
        else
        {
          out.print("<center><h1 style=color: red;'>Login failed</h1></center>");

		%>
			
				<jsp:include page="login.html"/>
				
             <% 
        }
        con.close();
    }
    catch (Exception e)
    {
        out.print("<center><h1>Error: " + e.getMessage() + "</h1></center>");
        e.printStackTrace(); 
    }
%>
