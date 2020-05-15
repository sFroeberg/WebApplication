/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sok;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import jdbc.JdbcCon;

/**
 *
 * @author Joel
 */
public class BildDAO {
    
    private final String GET_DATA = "SELECT bildID, kategori FROM bild";
    private final String GET_IMAGE = "SELECT bildfil FROM bild WHERE bildID = ?";
    
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<BildDTO> getData(){
        
        BildDTO bildDto = null;
        List<BildDTO> bildLista = new ArrayList<BildDTO>();
        
        try{
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            con = JdbcCon.openConnection();
            ps = con.prepareStatement(GET_DATA);
            rs = ps.executeQuery();
            
            while(rs.next()){
                bildDto = new BildDTO();
                bildDto.setBildID(rs.getString(1));
                bildDto.setKategori(rs.getString(2));
                bildLista.add(bildDto);
                
                System.out.println(bildDto.getBildID());
                System.out.println(bildDto.getKategori());
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return bildLista;
    }
    
    public byte[] getBild(String bildID){
        
        byte[] bild = null;
        try{
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        con = JdbcCon.openConnection();
        ps = con.prepareStatement(GET_IMAGE);
        ps.setString(1, bildID);
        rs = ps.executeQuery();
        System.out.println("Fanns det inget id tidigare är det också tomt här:" +bildID);
        
        
        if(rs.next()){
        bild = rs.getBytes(1);
        }
        
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return bild;
    }
}
