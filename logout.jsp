<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

     <style>
        /* Basic styling for layout */
        body {
            font-family: Arial, sans-serif;
           background-image: url('d.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
	   max-width: 100%;
  	  height: 100% auto;        
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
/* Adding hover effect */
nav a:hover {
    color: #ffd700; /* Change the color when hovering */
    transform: scale(1.1); /* Scale the link slightly on hover */
}
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 0 20px;
        }
        .middle-section {
            background-image: url('');
            background-size: cover;
            background-position: center;
            padding: 100px 20px;
            text-align: center;
            color: #fff;
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
        <nav class="navbar">
		<a href="home.jsp">Home</a>
        </nav>
    </header>

	<div class="container">
        <div class="middle-section">
            <center>
                <h1>Logout</h1>
                <% 
                    session.removeAttribute("username");
		    
                %>
                <p>You have been successfully logged out.</p>
                <p><a href="login.html" style="color: #fff;">Login again</a></p>
            </center>
        </div>
    </div>
</body>
<footer>
        <footer style="text-align: center;">
       Copy Right @ Saranya Durga  22761A05A9
  </footer>   

</html>
