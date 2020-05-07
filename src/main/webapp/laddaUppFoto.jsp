<%-- 
    Document   : LaddaUppFoto
    Created on : 2020-maj-06, 09:05:18
    Author     : Joel
--%>

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
            <form method="post" action="laddaUppServlet" enctype="multipart/form-data">
                <table border="0"> 
                    <tr>
                        <td>Välj bild: </td>
                        <td><input type="file" name="foto" size="50"/></td>
                    </tr>
                    <tr>
                        <td>Kategori: </td>
                        <td><input type="text" name="kategori" size="50"/></td>
                    </tr>
                    <tr>
                        <td>Beskrivning: </td>
                        <td><input type="text" name="beskrivning" size="50"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Save">
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
