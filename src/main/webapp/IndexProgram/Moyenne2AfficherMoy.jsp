<%-- 
    Document   : Moyenne2AfficherMoy
    Created on : 5 avr. 2018, 12:05:29
    Author     : Formation
--%>
<%
//    session;
//    response;
//    request;
    double Moyen = 0;
    if (session.getAttribute("NbValeur") != null) {
        Moyen = (double) session.getAttribute("Moyen");
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("Moyenne2.jsp");
        rd.forward(request, response);
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <title>Moyen des nombres</title>
        <%@include file="../entete2.jsp" %>
    </head>
    <body>
        <h1>Choix du Projet </h1><br/>
        <div id="Body">
            <div class="form">
                    <p>Moyen des nombres</p><br />
                    ------------------------<br />
                    La moyen des nombre est : <%= Moyen%>
            </div>
        </div>
        <%@include file="../pied2.jsp" %>
    </body>
</html>