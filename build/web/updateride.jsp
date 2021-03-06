<%-- 
    Document   : findride_jsp
    Created on : Apr 1, 2020, 12:06:11 PM
    Author     : Nilesh Vishwakarma
--%>
<%

String ses=(String)session.getAttribute("unm");
if(ses!=null)
{

%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.mydb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
table td:last-child {
  font-size: 0.95em;
  line-height: 1.4;
  text-align: left;
}
table th {
  background-color: #daeff1;
  font-weight: 300;
}
table tr:nth-child(2n) {
  background-color: white;
}
table tr:nth-child(2n+1) {
  background-color: #edf7f8;
}

@media screen and (max-width: 700px) {
  table, tr, td {
    
    
  }

  td:first-child {
    position: absolute;
    top: 50%;
    -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
    width: 100px;
  }
  td:not(:first-child) {
    clear: both;
    margin-left: 100px;
    padding: 4px 20px 4px 90px;
    position: relative;
    text-align: left;
  }
  td:not(:first-child):before {
    color: #91ced4;
    content: '';
    display: block;
    left: 0;
    position: absolute;
  }
  
 

  tr {
    padding: 10px 0;
    position: relative;
  }
  tr:first-child {
    
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

  td:first-child {
    background-color: #c8e7ea;
    border-bottom: 1px solid #91ced4;
    border-radius: 10px 10px 0 0;
    position: relative;
    top: 0;
    -webkit-transform: translateY(0);
            transform: translateY(0);
    width: 100%;
  }
  td:not(:first-child) {
    margin: 0;
    padding: 5px 1em;
    width: 100%;
  }
  td:not(:first-child):before {
    font-size: .8em;
    padding-top: 0.3em;
    position: relative;
  }
  td:last-child {
    padding-bottom: 1rem !important;
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
<body>
    
    <%
        ses=(String)session.getAttribute("unm");
        
  
    String qry="SELECT * FROM `routes` WHERE email='"+ses+"'";
    
    mydb db=new mydb();
    db.connect();
    ResultSet rs=db.stmt.executeQuery(qry);
   int count=0;
    while(rs.next())
    {
        count++;
        
    }
    if(count>0)
    {
    



    %>
    
    
<div class="table-users">
   <div class="header">Routes Available</div>
   
   <table cellspacing="0">
      <tr>
         <th>Route From</th>
         <th>Route TO</th>
         <th>Other Route details</th>
         <th>Vehicle details</th>
         <th>No. Of Seats available</th>
         <th>Contact No.</th>
         <th>Status</th>
         <th>Update</th>
      </tr>

      <%
      rs.beforeFirst();
      while(rs.next())
      {
          
      
      %>
      <tr>
          
         <td><%=rs.getString(3)%></td>
         <td><%=rs.getString(4)%></td>
         <td><%=rs.getString(5)%></td>
         <td><%=rs.getString(6)%></td>
         <td><%=rs.getString(7)%></td>
         <td><%=rs.getString(8)%></td>
         <td><%=rs.getString(9)%></td>
         <td><a href="update.jsp?s_no=<%=rs.getString(1)%>">Update</a></td>
         
      </tr>
        <%
        }
}
else

{
    out.print("<center><h1>No Ride Found.</h1></center>");
}
        %>
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