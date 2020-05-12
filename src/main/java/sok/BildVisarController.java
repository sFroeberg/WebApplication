/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sok;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Joel
 */
@WebServlet("/BildVisarController")
public class BildVisarController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        BildDAO bildDao = null;
        bildDao = new BildDAO();
        List<BildDTO> lista = bildDao.getData();
        
        request.setAttribute("lista", lista);
        RequestDispatcher dispatcher = request.getRequestDispatcher("sokResultat.jsp");
        dispatcher.forward(request, response);
        
        }
}
