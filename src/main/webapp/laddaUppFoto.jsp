<%-- 
    Document   : LaddaUppFoto
    Created on : 2020-maj-06, 09:05:18
    Author     : Joel
--%>

<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <title>Start Page</title>
    <link rel="stylesheet" href="index.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
   

<body>
    <main>
        <div class="header">
            <a href="index.html">
                <img src="https://static.vecteezy.com/system/resources/previews/000/485/719/non_2x/vector-newspaper-line-black-icon.jpg"
                    alt="News" style="float:left;width:100px;height:100px;">
            </a>
            <h2>Bothniabladet</h2>
            <ul>
                <li><a href="LoggaIn.html">Logga in</a></li>
                <li><a href="laddaUppFoto.jsp">Ladda upp foto</a></li>
                <li><a href="nyabilder.jsp">Nya bilder</a></li>
                <li><a href="bildSok.jsp">Bildsök</a></li>
            </ul>
            <hr>
        </div>

        <div class="rowladdaupp">
            <div class="columnladdaupp" style="background-color:white">
            <h1 style="text-align: center;"> Ladda upp foto </h1> <br>

                <form method="post" action="laddaUppServlet" enctype="multipart/form-data">

                        <h2 style="text-align: center;">Välj bild</h2><br>
                        <input type="file" name="foto" size="50" /> <br> <br> <br>
                        <h4 style="text-align: center;">Skriv en text som beskriver bilden</h4>
                        <textarea placeholder="Beskrivning av bild här" name="beskrivning" rows ="6" cols="50" ></textarea> 
                        <br><br><br>
                        <h3 >Taggar</h3>
                        <input placeholder="sport,natur,kanot"type="text" name="kategori" size="50" /> 

                        <input type="submit" value="Ladda Upp">
                        

                </form>
            </div>
        </div>
    </main>
    <footer>
        <!-- innehåller footern med alla dess länkar och ikoner -->
        <div class="footer-left">
            <h3> Om Bothniabladet</h3>
            <div class="footer-links">
                <!--Vänstra delen av footern, innehåller -->
                <a id="links" href="index.html">Hem</a>
                |
                <a id="links" href="Bildsök">Bildsök</a>
                |
                <a id="links" href="#nyabilder">Nyabilder</a>


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
