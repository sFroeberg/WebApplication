/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/viewbook")
public class viewbild extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public viewbild() {
        super();
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int bildID = Integer.parseInt(request.getParameter("id"));
        bildDAO dao = new bildDAO();
         
        try {
            sokBild bild = dao.get(bildID);
             
            request.setAttribute("bild", bild);
             
            String page = "/index.jsp";
            RequestDispatcher requestDispatcher = request.getRequestDispatcher(page);
            requestDispatcher.forward(request, response);              
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
         
    }
}