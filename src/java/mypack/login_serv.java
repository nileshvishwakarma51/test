/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class login_serv extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            processRequest(request, response);
            
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            
            mydb db =new mydb();
            db.connect();
            String qry="select email,password from login where email='"+email+"' and password='"+password+"'";
            
            ResultSet rs = db.stmt.executeQuery(qry);
            int count=0;
            while(rs.next())
            {
            count++;
            }
            if(count==1)
            {
               HttpSession session=request.getSession();
               session.setAttribute("unm",email);
              out.print("<script type='text/javascript'>location.href='dashboard.jsp'</script>");
            }
            else
            {
               out.print("<script type='text/javascript'>alert('invalid credentials')</script>");
                out.print("<script type='text/javascript'>location.href='signin.jsp'</script>");
            }
            db.conn.close();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        
        
    }

   
   

}
