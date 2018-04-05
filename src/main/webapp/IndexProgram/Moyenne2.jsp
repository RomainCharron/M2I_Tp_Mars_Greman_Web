<%-- 
    Document   : Moyenne2
    Created on : 5 avr. 2018, 10:12:21
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>

<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <%@include file="../entete2.jsp" %>
    </head>
    <body>
        <h1>Choix du Projet </h1><br/>
        <div id="Body">
            <div class="form">
                <form action="Traitement01Moyen02" method="post" id="form1">
                    <p>Saisir le nombre de valeur<br />
                    ------------------------<br />
                    </p>
                    <label for="NbValeur">Nombre de valeur</label>
                    <input type="text" id="NbValeur" name="NbValeur" required="true" /><br />
                    <input type="submit" value="Envoyer" />
                </form>
            </div>
        </div>
        <%@include file="../pied2.jsp" %>
    </body>
</html>
