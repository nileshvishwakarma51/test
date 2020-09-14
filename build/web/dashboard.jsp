
<%

String ses=(String)session.getAttribute("unm");
if(ses!=null)
{

%>

<!DOCTYPE html>
<html>
<head>
	<title></title>

<link rel="stylesheet" type="text/css" href="nav.css">

<meta charset="utf-8" name="viewport" content="width=divice-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 30%;
  border-radius: 5px;
  float: left;
  margin-top: 4vh;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 30px 16px;
}
.space
  {
    float: left;
    width: 3%;
  }
   button
  {
    cursor: pointer;
    background-color: #0014ff;
    border: 2px solid #00ff37;
    font-size: 20px;
    padding: 10px 30px;
    border-radius: 200px;
    font-weight: bold;
    color: #00ffdc;
  }
  button:hover
  {
    background-color: #9d00ff;
  }
@media screen and (max-width: 800px) {
   .card { 
    float: none;
    margin: 10%;
    width: 80%;       
  }
  

}

</style>


</head>
<body style="margin: 0px;">


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

<div>


<div class="space">
    &nbsp;
</div>



<div class="card">
  
  <div class="container">
    <center><h3><b>Offer Ride<br>&nbsp;</b></h3>
    <p>Here You Can Offer A Ride By Giving Your Future Ride Details.<br>&nbsp;</p> 
    <a href="offerride.jsp"><button >Offer Ride</button></a><br>&nbsp;</center> 
  </div>
</div>

<div class="space">
    &nbsp;
</div>

<div class="card">
  
  <div class="container">
   <center> <h3><b>Find Ride<br>&nbsp;</b></h3> 
    <p>Here You Can Find A Ride With Route Details And Contact Persons Directly.<br>&nbsp;</p> 
    <a href="findride1.jsp"><button>Find Ride</button></a><br>&nbsp;</center>
  </div>
</div>

<div class="space">
    &nbsp;
</div>

<div class="card">
  
  <div class="container">
    <center><h3><b>Update Ride<br>&nbsp;</b></h3> 
    <p>Here You Can Update Your Offer Ride. Like Free Seats Update.<br>&nbsp;</p> 
    <a href="updateride.jsp"><button>Update Ride</button></a><br>&nbsp;</center>
  </div>
</div>


</div>




<div style="margin-top: 15%;">


<div class="space">
    &nbsp;
</div>



<div class="card">
  
  <div class="container">
    <center><h3><b>My Rides<br>&nbsp;</b></h3>
    <p>Here You Can View Your Offered Rides History.<br>&nbsp;<br>&nbsp;</p> 
    <a href="myride.jsp"><button>My Rides</button></a><br>&nbsp;</center>
  </div>
</div>

<div class="space">
    &nbsp;
</div>

<div class="card">
  
  <div class="container">
    <center><h3><b>View Profile<br>&nbsp;</b></h3> 
    <p>Here You Can View Your Vehicle Sharing System Profile.<br>&nbsp;</p> 
    <a href="viewprofile.jsp"><button>View Profile</button></a><br>&nbsp;</center>
  </div>
</div>

<div class="space">
    &nbsp;
</div>

<div class="card">
  
  <div class="container">
   <center> <h3><b>Update Profile<br>&nbsp;</b></h3> 
    <p>Here You Can Update Your Vehicle Sharing System Profile.<br>&nbsp;</p> 
    <a href="updateprofile.jsp"><button>Update Profile</button></a><br>&nbsp;</center>
  </div>
</div>


</div>


<script type="text/javascript" src="nav.js"></script>
</body>
</html>

<%
}

else
{
response.sendRedirect("signin.jsp");
}
%>