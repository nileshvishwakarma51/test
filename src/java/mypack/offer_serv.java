/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nilesh Vishwakarma
 */
public class offer_serv extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
           
            
           response.setContentType("text/html;charset=UTF-8");
            
            PrintWriter out=response.getWriter();
            
            String r_from=request.getParameter("r_from");
            String email=request.getParameter("email");
            String r_to=request.getParameter("r_to");
            String other_r=request.getParameter("other_r");
            String v_details=request.getParameter("v_details");
            String no_seats=request.getParameter("no_seats");
            String phone=request.getParameter("phone");
            String status="active";
        
            mydb db=new mydb();
            db.connect();
            String qry="INSERT INTO `routes` (`email`, `r_from`, `r_to`, `other_r`, `v_details`, `no_seats`, `phone`, `status`) VALUES ('"+email+"', '"+r_from+"', '"+r_to+"', '"+other_r+"', '"+v_details+"', '"+no_seats+"', '"+phone+"', '"+status+"')";
          
            int rs=db.stmt.executeUpdate(qry);
            
             if(rs==1) {
                
                out.print("<script type='text/javascript'>alert('Ride Offered Sucessfully')</script>");
                out.print("<script type='text/javascript'>location.href='dashboard.jsp'</script>");
                
            }
            else 
            {
                
                out.print("error");
            }
       db.conn.close();
        
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

   
}
