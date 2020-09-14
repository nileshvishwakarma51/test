



<%

String ses=(String)session.getAttribute("unm");
if(ses!=null)
{

%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.mydb"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<style type="text/css">
		body {
  background-color: #91ced4;
}
body * {
  box-sizing: border-box;
}

.header {
  background-color: #327a81;
  color: white;
  font-size: 1.5em;
  padding: 1rem;
  text-align: center;
  text-transform: uppercase;
}

img {
  border-radius: 50%;
  height: 60px;
  width: 60px;
}

.table-users {
  border: 1px solid #327a81;
  border-radius: 10px;
  box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
  max-width: calc(100% - 2em);
  margin: 1em auto;
  overflow: hidden;
  width: 800px;
}

table {
  width: 100%;
}
table td, table th {
  color: #2b686e;
  padding: 10px;
}
table td {
  text-align: center;
  vertical-align: middle;
}

table th {
  background-color: #daeff1;
  font-weight: 300;
}

@media screen and (max-width: 700px) {
  table, tr, td {
    
  }


 
 
  
  tr {
    padding: 10px 0;
    position: relative;
  }
  
}
@media screen and (max-width: 500px) {
  .header {
    background-color: transparent;
    color: white;
    font-size: 2em;
    font-weight: 700;
    padding: 0;
    text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
  }

  img {
    border: 3px solid;
    border-color: #daeff1;
    height: 100px;
    margin: 0.5rem 0;
    width: 100px;
  }


  tr {
    background-color: white !important;
    border: 1px solid #6cbec6;
    border-radius: 10px;
    box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
    margin: 0.5rem 0;
    padding: 0;
  }

  .table-users {
    border: none;
    box-shadow: none;
    overflow: visible;
  }
}


	</style>
</head>
<body style="margin: 0px;">
    
    <%
            mydb db=new mydb();
            db.connect();
            String qry="SELECT * FROM `login` WHERE email='"+session.getAttribute("unm") +"'";
           ResultSet rs= db.stmt.executeQuery(qry);
           rs.next();
        %>
    
    
<div class="table-users">
   <div class="header">Your Profile</div>
   
   <table cellspacing="0">
      <tr>
         
         <th>Name</th>
         <th>Email Id</th>
         <th>Password</th>
         <th >Adhar No.</th>
         <th>Phone No.</th>
         
      </tr>

      
      <tr>
          <td><%=rs.getString(2)%></td>
         <td><%=rs.getString(3)%></td>
         <td><%=rs.getString(4)%></td>
         <td><%=rs.getString(5)%></td>
         <td><%=rs.getString(6)%></td>

         
      </tr>
        
     
   </table>
</div>
</body>
</html>
<%
}

else
{
response.sendRedirect("signin.jsp");
}
%>