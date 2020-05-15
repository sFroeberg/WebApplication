<%-- 
    Document   : bildSok
    Created on : 2020-maj-06, 11:11:08
    Author     : Joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
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
            <li><a href="LoggaIn.html">Logga in</a></li>
            <li><a href="laddaUppFoto.jsp">Ladda upp foto</a></li>
            <li><a href="BildDatumController">Nya bilder</a></li>
            <li><a href="bildSok.jsp">Bildsök</a></li>
        </ul>
        <hr>
        </div>

        <div class="row">
        <div class="column side" style="background-color:white;"></div>
        <div class="column middle" style="background-color:gray;">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

            <form method="post" name="BildVisarController" action="BildVisarController" style="margin:auto;max-width:300px;">
            <input type="text" placeholder="Sök efter bild" name="sokfras">
            <button type="submit" name="submit" value="Search"><i class="fa fa-search"></i></button>
            </form>
        
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
