<%-- 
    Document   : Moyenne2SaisierNombre
    Created on : 5 avr. 2018, 11:40:56
    Author     : Formation
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>

<%
//    session;
//    response;
//    request;
    int nbValeur = 0;
    if (session.getAttribute("NbValeur") != null) {
        nbValeur = (int) session.getAttribute("NbValeur");
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("Moyenne2.jsp");
        rd.forward(request, response);
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <title>Veuiller saisir les nombres</title>
        <%@include file="../entete2.jsp" %>
    </head>
    <body>
        <h1>Choix du Projet </h1><br/>
        <div id="Body">
            <div class="form">
                <form action="Traitement02Moyen02" method="post" id="form2">
                    <p>Veuiller saisir les nombres</p><br />
                    ------------------------<br />
                    <% for (int indValueForm = 0; indValueForm < nbValeur; indValueForm++) {%>
                    <label for="Valeur<%=indValueForm%>">Valeur <%=indValueForm%></label>
                    <input type="text" id="Valeur<%=indValueForm%>" name="Valeur<%= indValueForm%>" required="true" /><br /><br />
                    <% }%>
                    <input type="submit" value="Valider" />
                </form>
            </div>
        </div>
        <%@include file="../pied2.jsp" %>
    </body>
</html>
