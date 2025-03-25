<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
.header
{
    border: 0px solid;
    position:fixed;
    top: 0;
    left :0;
    right:0;
    z-index: 1000;
    display: flex;
    align-items:center;
    justify-content: space-between;
    padding: 1.5rem 7%;
    background: #fff;
    box-shadow: var(--box-shadow);
}

.header .logo
{
    font-size: 1.5rem;
    font-weight: bolder;
    color:green;
}

.header .logo i
{
    color: var(--green);
}

.header .navbar a
{
    font-size: 1.5rem;
    margin: 0 1rem;
    color: var(--black);
}

.header .navbar a:hover
{
    color: var(--green);
}
.
.header .navbar.active
{
    right: 2rem;
    transition: .4s linear;
}
footer {
            text-align: center;
            padding: 10px;
            background-color: green;
            color: white;
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
        }

</style>
</head>
<body>
     <header class="header">
    <a href="#" class="logo"> <i class="fa fa-shopping-basket" aria-hidden="true"></i>Groco</a>
 
<nav class="navbar"><a href="home.jsp">Home</a>
</nav>
</header>

   <div class="container">
       <center> <h1>User Profile</h1></center>
        <%
            String username = (String) session.getAttribute("username"); 

            if (username == null) {
                response.sendRedirect("login.jsp");  
                return; 
            }

            Connection con = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "cherry07");
                String query = "SELECT * FROM signup WHERE username = ?";
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, username);
                rs = pstmt.executeQuery();

                if (rs.next()) {

                    String age = rs.getString("age");
                    String gender = rs.getString("gender");
                    String name = rs.getString("name");
                    Long phone = rs.getLong("phone");
         

                    
        %>
	<br><br><br>
	<body bgcolor=lightgreen></body>
	<center>
    	<table   border="2"  width="50%" cellspacing="0" height="400px">
        <tr>
            <th><b>Username</b></th>
            <td><%= username %></td>
        </tr>
        <tr>
             <tr>
            <th><b>Age</b></th>
            <td><%= age %></td>
        </tr>
        <tr>
            <th><b>Name</b></th>
            <td><%= name %></td>
        </tr>
        <tr>
            <th><b>PhoneNo</b></th>
            <td><%= phone %></td>
        </tr>
	
    </table>
   </center>

        <%
                } else {
                    out.println("<p>User not found.</p>");
                }
            } catch (Exception e) {
                out.println("<p>Error: " + e.getMessage() + "</p>");
            } 
        %>
    </div>

    <footer style="text-align: center;">
       Copy Right @ Saranya Durga  22761A05A9
    </footer>
</body>
</html>
