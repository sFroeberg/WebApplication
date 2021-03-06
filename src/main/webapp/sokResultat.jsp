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
        <title>Bothniabladet</title>
        <link rel="stylesheet" href="./CSS/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
           
            <div class="header">
            <a href="index.html">

                <img src="https://static.vecteezy.com/system/resources/previews/000/485/719/non_2x/vector-newspaper-line-black-icon.jpg" alt="News" style="float:left;width:100px;height:100px;" id=logga>
            </a>
            <h2 id=hightlight>Bothniabladet</h2>
            <ul>
                <li><a href="laddaUppFoto.jsp">Ladda upp foto</a></li>
                <li><a href="BildDatumController">Nya bilder</a></li>
                <li><a href="BildKategoriController">Kategorier</a></li>
               
            </ul>

        </div>
 
        <div class="row">
        <div class="column side" style="background-color:white;"></div>
        <div class="column middle">
      
 
        <%
          List<BildDTO> lista = (ArrayList<BildDTO>)request.getAttribute("lista");
        %>
       
        <div class="picturerow">
        <%
            for(int i = 0; i<lista.size(); i++){
            BildDTO dto = lista.get(i);
            String bildID = dto.getBildID();
            String kategori = dto.getKategori();
            %>
            <div class="imgdisplay">
            <img src ="./BildDownload?bildID=<%=bildID%>" style="width:100%"> 
            </div>
            <%
            if(i%4 == 0 && i != 0){
            %>
            </div>
            <div class="picturerow">
            <%
                continue;
            }
            %>

            <%}
            %>
            </div>
        </div>
 
 
           <footer>
        <!-- innehåller footern med alla dess länkar och ikoner -->
        <div class="footer-left">
            <h3> Om Bothniabladet</h3>
            <div class="footer-links">
                <!--Vänstra delen av footern, innehåller -->
                <a  id="links" href="index.html">Hem</a>
                |
                <a  id="links" href="Bildsök">Bildsök</a>
                |
                <a id="links"  href="#nyabilder">Nyabilder</a>


            </div>

        </div>

        <div class="footer-center">
            <strong> Kontakta oss</strong> <!-- mitten delen av footern-->
            <div class="kontaktuppgifter">
                <p><a href="mailto:expedition@bothniabladet.se"> Bothniabladet@email.se</a><br>
                    Telefon: 091501151 </p>

            </div>
        </div>

        <div class="footer-right">
            <!--Högra delen av footern -->
            <strong> Sociala medier </strong>
            <div class="ikoner">
                <a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
                <a href="https://www.instagram.com"><i class="fa fa-instagram"></i></a>
            </div>
        </div>

    </footer>
    </body>
</html>