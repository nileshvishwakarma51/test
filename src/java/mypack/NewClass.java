/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nilesh Vishwakarma
 */
public class NewClass {
    
    public static void main(String[] args) {
        try {
            mydb db=new mydb();
            db.connect();
            String qry="INSERT INTO `login` (`id`, `name`, `email`, `password`, `adhar`, `phone_no`) VALUES (NULL, '1', '1', '1', '1', '1')";
         int rs=  db.stmt.executeUpdate(qry);
            System.out.println(rs);
       db.conn.close(); } catch (Exception ex) {
            System.out.println(ex);
        }
    }
    
}
