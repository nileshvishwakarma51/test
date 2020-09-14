<%

String ses=(String)session.getAttribute("unm");
if(ses!=null)
{

%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.mydb"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Offer Ride</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">



<link rel="stylesheet" type="text/css" href="nav.css">

<meta charset="utf-8" name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body style="margin: 0px; padding: 0px; ">

     <%
            
        int s_no=Integer.parseInt(request.getParameter("s_no"));
        
        String qry="SELECT * FROM `routes` WHERE `s_no.` = "+s_no+"";
        
        mydb db=new mydb();
        db.connect();
        ResultSet rs= db.stmt.executeQuery(qry);
rs.next();

        %>
    
    
    
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
                    <form  id="signup-form" class="signup-form"  name="form" method="post">
                        <h2 class="form-title">Update A Ride</h2>

                       
                        <div class="form-group">
                            <input type="text" class="form-input" value="<%=rs.getString(3)%>" name="r_from" placeholder="Route From" required list="from" />
                            <datalist id="from">
                               <option value="Indore"></option>
                               <option value="Mhow"></option>
                               <option value="Pithampur"></option>
                               <option value="Manpur"></option>
                                <option value="Rau"></option>
                            </datalist>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-input" value="<%=rs.getString(4)%>" name="r_to" placeholder="Route To" required list="to" />
                            <datalist id="to">
                               <option value="Indore"></option>
                               <option value="Mhow"></option>
                               <option value="Pithampur"></option>
                               <option value="Manpur"></option>
                                <option value="Rau"></option>
                            </datalist>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-input" value="<%=rs.getString(5)%>" name="other_r" placeholder="Enter Other Route Details..." required/>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-input" value="<%=rs.getString(6)%>" name="v_details" placeholder="Vehicle Details Like, Vehicle  Model Name" required/>
                        </div>
                        <div class="form-group">
                            <input type="number" class="form-input" value="<%=rs.getString(7)%>" name="no_seats" placeholder="No. Of Seats Available" required/>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-input" value="<%=rs.getString(8)%>" name="phone" placeholder="Contact No." required/>
                        </div>
                        
                        <div class="form-group">
                            <input type="text" class="form-input"  name="status" placeholder="Status" required list="status" />
                            <datalist id="status">
                              
                               <option value="active"></option>
                                <option value="deactivate"></option>
                            </datalist>
                        </div>
                        
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Offer Ride" style="cursor: pointer;"  required />
                        </div>
                    </form>
                    
                </div>
            </div>
        </section>

    </div>
<%
if(request.getParameter("submit")!=null)
{
String qry1="UPDATE routes SET r_from='"+request.getParameter("r_from")+"'"
        + ",r_to='"+request.getParameter("r_to")+"',"
        + "other_r='"+request.getParameter("other_r")+"'"
        + ",v_details='"+request.getParameter("v_details")+"',"
        + "no_seats='"+request.getParameter("no_seats")+"'"
        + ",phone='"+request.getParameter("phone")+"',"
        + "status='"+request.getParameter("status")+"' WHERE `s_no.`="+s_no+"";




        db.stmt.executeUpdate(qry1);
    out.print("<script type='text/javascript'>alert('Ride Updated Sucessfully')</script>");
    out.print("<script type='text/javascript'>location.href='dashboard.jsp'</script>");

}
%>


<!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script type="text/javascript"></script>

<script type="text/javascript" src="nav.js">
    
</script>
</body>
</html>


<%
}

else
{
response.sendRedirect("signin.jsp");
}
%>