<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Plant store</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
:root
{
    --green:green;
    --black:#130f40;
    --light-color:#666;
    --box-shadow:0 .5rem 1.5rem rgba(0,0,0,.1);
    --border:.2rem solid  rgba(0,0,0.1);
     --outline: 0.1rem solid  rgba(0,0,0.1);
}
*
{
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    outline: none;
    border:none;
    text-decoration: none;
    text-transform: capitalize;
    transition: all .2s linear;
}



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
    <a href="#" class="logo"> <i class="fa fa-shopping-basket" aria-hidden="true"></i>ONLINE PLANT STORE</a>
        <nav class="navbar">
            <a href="home.jsp">Home</a> |
            <a href="profile.jsp">Profile</a> |
            <a href="logout.jsp">Logout</a>
        </nav>
        <% // Add this to display the username
            String username = (String) session.getAttribute("username");
            if (username != null) {
                out.println("<p>Welcome, " + username + " This is Your Home Page</p>");
            } else {
                out.println("<p>Welcome, guest</p>");
            }
        %>
    </header>
    <center><img src="b.jpg" alt="Girl in a jacket" width="1500" height="700"></center>

    <footer style="text-align: center;">
        Copy Right @ yendluri sony 22761A05D1-All Rights Reserved
    </footer>
</body>
</html>
