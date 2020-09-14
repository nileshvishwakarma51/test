<%

String ses=(String)session.getAttribute("unm");
if(ses!=null)
{

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Find Ride</title>

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
                <a href="dashboard.jsp" class="nav-links">Dashboard</a>
            </li>
            <li>
                <a href="offerride.jsp" class="nav-links">Offer Ride</a>
            </li>
            <li>
                <a href="findride1.jsp" class="nav-links">Find Ride</a>
            </li>
            
            <li>
                <a href="contact.html" class="nav-links">Contact Us</a>
            </li>
            <li>
                <a href="about.html" class="nav-links">About Us</a>
            </li>
            <li>
                <a href="signout.jsp" class="nav-links">Sign out</a>
            </li>
        </ul>
    </nav>





    <div class="main" style="padding: 25px 0px;">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="POST" action="findride.jsp" id="signup-form" class="signup-form">
                        <h2 class="form-title">Find A Ride</h2>
                        
                       <div class="form-group">
                            <input type="text" class="form-input" name="r_from" placeholder="Route From" required list="from" />
                            <datalist id="from">
                               <option value="Indore"></option>
                               <option value="Mhow"></option>
                               <option value="Pithampur"></option>
                               <option value="Manpur"></option>
                                <option value="Rau"></option>
                            </datalist>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-input" name="r_to" placeholder="Route To" required list="to" />
                            <datalist id="to">
                               <option value="Indore"></option>
                               <option value="Mhow"></option>
                               <option value="Pithampur"></option>
                               <option value="Manpur"></option>
                                <option value="Rau"></option>
                            </datalist>
                        </div>
                        
                        
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Find Ride" style="cursor: pointer;" />
                        </div>
                    </form>
                    
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

else
{
response.sendRedirect("signin.jsp");
}
%>