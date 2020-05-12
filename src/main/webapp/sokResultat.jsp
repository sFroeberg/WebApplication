<%-- 
    Document   : sokResultat
    Created on : 2020-maj-12, 08:35:46
    Author     : Joel
--%>

<%@page import="sok.BildDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>visa bilder</title>
    </head>
    <body>
    <center>
        <%
          List<BildDTO> lista = (ArrayList<BildDTO>)request.getAttribute("lista");
        %>
        
        <table>
        <thead>
        <tr><td>id</td><td>kategori</td><td>bild</td></tr>        
        </thead>
        <%
        for(int i = 0; i<lista.size(); i++){
        BildDTO dto = lista.get(i);
        String bildID = dto.getBildID();
        String kategori = dto.getKategori();
        %>
        <tr><td><%=bildID%></td><td><%=kategori%></td><td><img src ="./BildDownload?bildID=<%=bildID%>" height="150"/></td></tr>        
        <%}
        %>
        
        </table>
    </center>
    </body>
</html>
