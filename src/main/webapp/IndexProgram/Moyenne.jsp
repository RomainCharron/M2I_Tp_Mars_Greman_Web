<%-- 
    Document   : Moyenne
    Created on : 28 mars 2018, 11:49:53
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <% 
            int nbValeur = 0;
            try {
                    nbValeur = Integer.parseInt(request.getParameter("nbValeur"));
                } catch (Exception e) {
                }
            %>
    <body>
        <h1>Moyenne</h1>
        <form method="get" action="#">
            <p>
                Choisissez le nombre de valeur à entrée<br />
                ---------------------------------<br />
                <label for="sapinsSize">Taille : <input type="text" name="nbValeur" value="<%if (nbValeur!=0){%><%=nbValeur%><%} %>" /></label>
                <input type="submit" value="Envoyer" />
            </p>
         </form><%
        if (nbValeur != 0) {
               %>
        <form method="get" action="ProgramMoyenne">
            <p>
                Saisire les valeur pour la moyene<br />
                ---------------------------------<br />
                <input type="hidden" value="<%= nbValeur %>" name="nbValeur">
               <%
            }
        for (int i = 0; i < nbValeur; i++) {
                %>
                <label for="MoyeneValeur<%=i %>">Valeur <%=i + 1%> : <input type="text" name="MoyeneValeur<%=i %>" /></label><br /><br />
               <%
            }
        if (nbValeur != 0) {
               %>
                <input type="submit" value="Envoyer" />
            </p>
         </form>
               <%
            }
        %>
        <!--<form method="get" action="ProgramUnKMaP<%//= "?" + nbValeur %>">
            <p>
                Saisire les valeur pour la moyene<br />
                ---------------------------------<br />
                <label for="sapinsSize">Taille : <input type="text" name="sapinsSize" /></label>
                <input type="submit" value="Envoyer" />
            </p>
         </form><!-- -->
    </body>
</html>
