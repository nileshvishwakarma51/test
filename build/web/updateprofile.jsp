<%

String ses=(String)session.getAttribute("unm");
if(ses!=null)
{

%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.mydb"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <title>Sign Up</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">



<link rel="stylesheet" type="text/css" href="nav.css">

<meta charset="utf-8" name="viewport" content="width=divice-width,initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    
</head>
<body style="margin:0px; padding: 0 !important;">



 <%
    mydb db=new mydb();
    db.connect();
   /* */
   String qry="SELECT * FROM `login` WHERE email='"+session.getAttribute("unm")+"'";
    ResultSet rs=db.stmt.executeQuery(qry);
    rs.next();
%>






    <div class="main" style="padding: 25px 0px;">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form  id="signup-form"  method="post" class="signup-form" onsubmit="return pass()" name="form">
                        <h2 class="form-title">Update Profile</h2>
                        <div class="form-group">
                            <input type="text" class="form-input" value="<%=rs.getString(2)%>" name="name" id="name" placeholder="Your Name" required/>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-input" value="<%=rs.getString(3)%>" name="email" id="email" placeholder="Your Email" required/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" value="<%=rs.getString(4)%>" name="password" id="password" placeholder="Password" required/>
                            
                        </div>
                        

                         <div class="form-group">
                            <input type="text" class="form-input" value="<%=rs.getString(5)%>" name="adhar_no" id="adhar_no" placeholder="Your Adhar No." minlength="12" maxlength="12" required/>
                        </div>

                         <div class="form-group">
                             <input type="text" class="form-input" value="<%=rs.getString(6)%>" name="phone" id="phone" placeholder="Your Phone No." required minlength="10" maxlength="12" />
                        </div>
                        
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Update Profile" style="cursor: pointer;"  required />
                        </div>
                    </form>
                    
                </div>
            </div>
        </section>

    </div>
    
    
   
    <%
        
        if(request.getParameter("submit")!=null)
        {
    String qry1="UPDATE `login` SET "
            + "`name`='"+request.getParameter("name")+"',"
            + "`email`='"+request.getParameter("email")+"',"
            + "`password`='"+request.getParameter("password")+"',"
            + "`adhar`='"+request.getParameter("adhar_no")+"',"
            + "`phone_no`='"+request.getParameter("phone")+"'"
            + " WHERE email='"+session.getAttribute("unm")+"'";
    db.stmt.executeUpdate(qry1);
    
     out.print("<script type='text/javascript'>alert('Profile Update Sucessfully')</script>");
     out.print("<script type='text/javascript'>location.href='dashboard.jsp'</script>");
    
        }
    %>
    
    
    
    
    
    
    
<script type="text/javascript" src="nav.js"></script>
    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script type="text/javascript">
        
function pass()
{
    var pass=document.forms["form"]["password"].value;
        var confirm_pass=document.forms["form"]["re_password"].value;

            if (pass!=confirm_pass) 
            {
                
                alert("Password and confirm password does not match");
                document.getElementById('re_password').style.borderColor='red';
                return false;
                
                
                
        }
        else
        {
            document.getElementById('re_password').style.borderColor='#ebebeb';
        }

}

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