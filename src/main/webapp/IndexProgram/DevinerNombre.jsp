<%-- 
    Document   : DevinerNombre
    Created on : 28 mars 2018, 14:30:12
    Author     : Formation
--%>

<%@page import="com.m2i.charron.web.greman_tp_web_mars.DevinerNombre"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DevinerNombre</title>
    </head>
    
        <% 
        
            boolean isDoContinu = true;
            int tmpScore = 0, valeurSaisie = 0, nbDeviner = 0;
            String domresulte = "";
            
            
            try {
                    valeurSaisie = Integer.parseInt(request.getParameter("valeurSaisie"));
                    nbDeviner = Integer.parseInt(request.getParameter("nbDeviner"));
                    tmpScore = Integer.parseInt(request.getParameter("tmpScore"));
                    
                } catch (Exception e) {
                    //domresulte += "Erreur " + e.getMessage() + "<br />";
                }
        if (nbDeviner == 0) {
            Random unRandom = new Random();
            nbDeviner = unRandom.nextInt(100);
        }
        else
        {
            if(nbDeviner != valeurSaisie)
            {
                 domresulte += "C'est " + (valeurSaisie < nbDeviner ? "superieur" : "Inferieur") + "";
            }
            else
            {
                domresulte += "Bravo tu à trouver";
                isDoContinu = false;
            }
        }
            %>
    <body>
        <h1>Hello World!</h1>
        <form method="post" action="#">
            <p>
                Deviner le nombre<br />
                <%= domresulte + "<br />"%>
                ---------------------------------<br />
                <% if(isDoContinu)
                { 
                    tmpScore++;
               %>
               Debug Nb <%= nbDeviner%><br />
                <input type="hidden" value="<%= nbDeviner%>" name="nbDeviner">
                <input type="hidden" value="<%= tmpScore%>" name="tmpScore">
                <label for="sapinsSize">Saisir le bon nombre : <input type="text" name="valeurSaisie" /></label>
                <input  type="submit" value="Envoyer" />
                <%}
                else {
                    DevinerNombre.setScore(tmpScore);
                    
                %>
                <p>
                    Score : <%= tmpScore%><br />
                    Le meilleur Score est <%= DevinerNombre.getMinScore()%><br />
                    ---------------------------------<br />
                    Vouler vous faire une nouvelle partie ?
                    <input formaction="#" type="submit" value="Oui" />
                    <input formaction=".." type="submit" value="Non" />
                    
                </p>
                <%}//  System.out.println("Score : " + score); formaction
                %>
            </p>
         </form>
    </body>
</html>
<%

%>