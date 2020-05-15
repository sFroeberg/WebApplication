/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Joel
 */
public class ActorExtraction {
    
private Statement statement;
private String actor;
    
    public static int actorExt(){
        
        int status = 0;
        
        try{
            
            Connection conn=JdbcCon.openConnection();
            PreparedStatement ps=conn.prepareStatement("SELECT * FROM bild;");
            
            ResultSet rs = ps.executeQuery();
            
            ArrayList<String> array = new ArrayList<String>();
            
            while(rs.next()){
                System.out.println(rs.getString("filNamn"));
                
                array.add(rs.getString("filNamn"));
            }
            
            
        }catch(Exception e){System.out.println(e);}
        
        return status;
        
    }
    
}
