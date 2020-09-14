/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class signup_serv extends HttpServlet {


    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            
            
            
            response.setContentType("text/html;charset=UTF-8");
            
                PrintWriter out=response.getWriter();
                
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            String adhar=request.getParameter("adhar_no");
            String phone=request.getParameter("phone");
           
            mydb db=new mydb();
            db.connect();
            
            String qry="SELECT email FROM `login` WHERE email='"+email+"'";
          
            ResultSet result = db.stmt.executeQuery(qry);
            
            if(result.next())
            {
                out.print("<script type='text/javascript'>alert('Email Already Exists')</script>");
                out.print("<script type='text/javascript'>location.href='signup.html'</script>");
            }
            else
            {
                System.out.println("dcfv");
            String qry1="INSERT INTO `login` (`id`, `name`, `email`, `password`, `adhar`, `phone_no`) VALUES (NULL, '"+name+"', '"+email+"', '"+password+"', '"+adhar+"', '"+phone+"')";
            db.stmt.executeUpdate(qry1);
           
          out.print("<script type='text/javascript'>alert('Sign up Sucessful Please Login')</script>");

                out.print("<script type='text/javascript'>location.href='signin.jsp'</script>");
                
            
            }
            
       db.conn.close(); } 
        
        catch (Exception ex) {
            System.out.println(ex);
        }
        
    }

 
}
