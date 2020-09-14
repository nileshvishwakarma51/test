/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author Nilesh Vishwakarma
 */
public class mydb {
    
    public String dbname="vs";
   public String dbunm="root";
   public String dbpass="";
   public String dburl="jdbc:mysql://localhost:3306/"+dbname;
   public Statement stmt=null;
   public Connection conn=null;
    
   public void connect(){
    
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            conn=DriverManager.getConnection(dburl,dbunm,dbpass);
            stmt=conn.createStatement();
            
            
        } catch (Exception ex) {
            System.out.println(ex+"sadklj");
        }
    }
}
