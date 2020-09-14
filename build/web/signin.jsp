<%

String ses=(String)session.getAttribute("unm");
if(ses!=null)
{
out.print("<script type='text/javascript'>location.href='dashboard.jsp'</script>");
}
else
{
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign In</title>

<link rel="stylesheet" type="text/css" href="nav.css">

<meta charset="utf-8" name="viewport" content="width=divice-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">




    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body style="margin:0px; padding: 0 !important;">





<nav class="navbar">
        <span class="navbar-toggle" id="js-navbar-toggle">
            <i class="fa fa-bars" aria-hidden="true"></i>
        </span>
        <a href="index.html" class="logo">Vehicle Sharing</a>
        <ul class="main-nav" id="js-menu">
            <li>
                <a href="index.html" class="nav-links">Home</a>
            </li>
            <li>
                <a href="signup.html" class="nav-links">Sign Up</a>
            </li>
            <li>
                <a href="signin.jsp" class="nav-links">Sign In</a>
            </li>
            <li>
                <a href="contact.html" class="nav-links">Contact Us</a>
            </li>
            <li>
                <a href="about.html" class="nav-links">About Us</a>
            </li>
        </ul>
    </nav>





    <div class="main" style="padding: 25px 0px;">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="POST" id="signup-form" class="signup-form" action="login_serv">
                        <h2 class="form-title">Login To Account</h2>
                        
                        <div class="form-group">
                            <input type="email" class="form-input" name="email" id="email" placeholder="Your Email" required />
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="password" id="password" placeholder="Password" required/>
                            
                        </div>
                        
                        
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Sign in" style="cursor: pointer;" />
                        </div>
                    </form>
                    <p class="loginhere">
                        Create an account ? <a href="signup.html" class="loginhere-link">Sign Up here</a>
                    </p>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script type="text/javascript" src="nav.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
<%
}


%>