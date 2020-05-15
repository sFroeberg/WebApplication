/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Joel
 */
public class JdbcCon {
    
    private Connection conn;
    private Statement statement;
    
    public static Connection openConnection(){
        
        Connection conn = null;
        
        if(conn==null){
            
            try {
            // db parameters
            
            /*String url       = "jdbc:mysql://localhost:3306/bothniabladet?useTimezone=true&serverTimezone=UTC";
            String user      = "root";
            String password  = "";*/
            
            
            
            String url       = "jdbc:mysql://localhost:3306/bothniabladet?useTimezone=true&serverTimezone=UTC";
            String user      = "root";
            String password  = "";

            // create a connection to the database
            conn = DriverManager.getConnection(url, user, password);
            
            System.out.println("uppkopplad");
            // more processing here
            // ...	
            } catch(SQLException e) {
            System.out.println(e.getMessage());
          
            }
            
        } return conn;

        
    }
    
}
