<%-- 
    Document   : Moyenne2
    Created on : 5 avr. 2018, 10:12:21
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <%@include file="entete2.jsp" %>
    </head>
    <body>
        <h1>Choix du Projet </h1><br/>
        <div id="Body">
            <div class="form">
                <form action="Moyenne2" method="post" id="form1">
                    <p>Saisir le nombre de valeur</p><br />
                    ------------------------<br />
                    <label for="NbValeur">Nombre de valeur</label>
                    <input type="text" id="NbValeur" name="NbValeur" required="true" />
                    <input type="submit" value="Envoyer" />
                </form>
                <form action="Moyenne2" method="post" id="form2">
                    <p>Veuiller saisir les nombres</p><br />
                    ------------------------<br />
                    <label for="Valeur00">Nombre de valeur</label>
                    <input type="text" id="Valeur00" name="Valeur00" required="true" />
                </form>
            </div>
        </div>
        <%@include file="pied2.jsp" %>
    </body>
</html>
