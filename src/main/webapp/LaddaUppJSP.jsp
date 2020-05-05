<%-- 
    Document   : LaddaUppJSP
    Created on : 2020-maj-05, 13:01:22
    Author     : Joel
--%>

<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
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
            <li><a href="Laddauppfoto.html">Ladda upp foto</a></li>
            <li><a href="nyabilder.html">Nya bilder</a></li>
            <li><a href="bildsok.html">Bildsök</a></li>
        </ul>
        <hr>
        </div>

        <div class="row">
        <div class="column side" style="background-color:white;"></div>
        <div class="column middle" style="background-color:gray;">
            <form action="UploadImageServlet" method="post" enctype="multipart/form-data">
                <table width="400px" align="center" border="2">
                    <tr>
                        <td align="center" colspan="2">Ladda upp en bild</td>      
                    </tr> 
                    <tr>
                        <td>Ladda upp bild:</td>
                        <td>
                    <input type="file" name="file">
                        </td>      
                    </tr>
                    <tr>
                        <td>Vilken kategori tillhör bilden</td>
                        <td>
                            <input type="text" name="kategori">
                        </td>
                    </tr>
                    <tr>
                        <td>Beskriv bilden med en fritext</td>
                        <td>
                            <input type="text" name="fritext">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" name="Submit">
                        </td>
                    </tr>
                    
                </table>   
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
