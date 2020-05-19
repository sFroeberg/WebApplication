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
    </head>
    <body>
            
        <div class="header">
        <a href="index.html">
        <img src="https://static.vecteezy.com/system/resources/previews/000/485/719/non_2x/vector-newspaper-line-black-icon.jpg" alt="News" style="float:left;width:100px;height:100px;">
        </a>
        <h2>Bothniabladet</h2>
        <ul>
            <li><a href="laddaUppFoto.jsp">Ladda upp foto</a></li>
            <li><a href="BildDatumController">Nya bilder</a></li>
            <li><a href="BildKategoriController">Kategorier</a></li>
            <li><a href="bildSok.jsp">Bildsök</a></li>

        </ul>
        <hr>
        </div>
        
        <div class="row">
        <div class="column side" style="background-color:white;">
            
            <form method="post" name="BildKategoriController" action="BildKategoriController">
            <button type="submit" name="sokfras" value="dryck">Dryck</button>
            </form>
            
            <form method="post" name="BildKategoriController" action="BildKategoriController">
            <button type="submit" name="sokfras" value="hundar">Hundar</button>
            </form>
            
            <form method="post" name="BildKategoriController" action="BildKategoriController">
            <button type="submit" name="sokfras" value="katter">Katter</button>
            </form>
            
            <form method="post" name="BildKategoriController" action="BildKategoriController">
            <button type="submit" name="sokfras" value="kungen">Kungen</button>
            </form>
            
            <form method="post" name="BildKategoriController" action="BildKategoriController">
            <button type="submit" name="sokfras" value="natur">Natur</button>
            </form>
            
            <form method="post" name="BildKategoriController" action="BildKategoriController">
            <button type="submit" name="sokfras" value="sport">Sport</button>
            </form>
            
            <h1>kategorier</h1> <br>
            <a  href="#sport">Sport</a> <br> <br>
            <a  href="#sport">Kajakklubben</a><br><br>
            <a  href="#sport">Natur</a><br><br>
            <a  href="#sport">Nakenhet</a><br><br>
            <a  href="#sport">Barn</a><br><br>
            <a  href="#sport">Pappor</a><br><br>
        </div>
        </div>

        <div class="row">
        <div class="column side" style="background-color:white;"></div>
        <div class="column middle" style="background-color:gray;">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
        </div>


        <div class="footer">
            <hr>
            <div class="scrollmenu">
                <a href="#kontakt">Kontakt</a>
                <a href="#omoss">Om oss</a>
                <a href="#priser">Priser</a>
            </div>
        </div>
    </body>
</html>
