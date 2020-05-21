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

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.JdbcCon;
/**
 *
 * @author Joel
 */
@WebServlet(name = "BildDatumController", urlPatterns = {"/BildDatumController"})
public class BildDatumController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String GET_DATA = "SELECT bildID, kategori FROM bild ORDER BY uppladdningsdatum LIMIT 12;";
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
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
        
        //List<BildDTO> lista = bildDao.getData();
        
        
        request.setAttribute("lista", bildLista);
        RequestDispatcher dispatcher = request.getRequestDispatcher("nyabilder.jsp");
        dispatcher.forward(request, response);
        
        }
}