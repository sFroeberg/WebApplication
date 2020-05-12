/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sok;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Joel
 */
@WebServlet("/BildDownload")
public class BildDownload extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        BildDAO dao = null;
        ServletOutputStream outputStream = null;
        String id = request.getParameter("bildID");
        //String id = "5";
        System.out.println("här bör det finnas bildID:" + id);
        dao = new BildDAO();
        byte[] bild = dao.getBild(id);
        outputStream = response.getOutputStream();
        outputStream.write(bild);
        outputStream.close();
        
        
        
       
    }
}
