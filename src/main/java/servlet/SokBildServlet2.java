package servlet;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.JdbcCon;
 
@WebServlet("/SokBildServlet2")
public class SokBildServlet2 extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String kategori = request.getParameter("kategori");
        System.out.println(kategori);
            
        byte[] img = null;
        ServletOutputStream sos = null;
        String sqlQuery = "SELECT bildfil FROM BILD WHERE kategori = 'joel'";
        //String sqlQuery = "SELECT bildfil FROM BILD WHERE kategori ='" + kategori + "'";
         Connection conn = null; // connection to the database
        
        try {
            
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = JdbcCon.openConnection();
            PreparedStatement ps = conn.prepareStatement(sqlQuery);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                img = rs.getBytes(1);
            }
            
            sos = response.getOutputStream();
            sos.write(img);
        }catch(Exception e){
            e.printStackTrace();
        }
        

         
    }
}