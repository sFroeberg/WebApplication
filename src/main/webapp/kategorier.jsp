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

                <img src="https://static.vecteezy.com/system/resources/previews/000/485/719/non_2x/vector-newspaper-line-black-icon.jpg" alt="News" style="float:left;width:100px;height:100px;" id=logga>
            </a>
            <h2 id=hightlight>Bothniabladet</h2>
            <ul>
                <li><a href="laddaUppFoto.jsp">Ladda upp foto</a></li>
                <li><a href="BildDatumController">Nya bilder</a></li>
                <li><a href="BildKategoriController">Kategorier</a></li>
                
            </ul>

        </div>

        <div id="css-table">
            <div class="col" >

                <h1>Kategorier</h1> <br>
                <form class="kategoriknapp" method="post" name="BildKategoriController" action="BildKategoriController">
                    <button type="submit" name="sokfras" value="dryck">Dryck</button>

                    <button type="submit" name="sokfras" value="hundar">Hundar</button>

                    <button type="submit" name="sokfras" value="katter">Katter</button>

                    <button type="submit" name="sokfras" value="kungen">Kungen</button>

                    <button type="submit" name="sokfras" value="natur">Natur</button>

                    <button type="submit" name="sokfras" value="sport">Sport</button>
                </form>

            </div
            <div class="col"   >

              
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
                <div class="col"> </div>
            </div>






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
