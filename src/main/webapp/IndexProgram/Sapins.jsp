<%-- 
    Document   : Sapins
    Created on : 27 mars 2018, 09:15:44
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Création de sapins</title>
    </head>
    <body>
        <h1>Création de sapins</h1>
        <form method="post" action="ProgramSapins">
            <p>
                Choisissez le Sapins à afficher<br />
                ---------------------------------<br />
                <!--<input type="radio" name="age" value="moins15" id="moins15" /> <label for="moins15">Moins de 15 ans</label><br /><!-- --->
                <input type="radio" name="sapinsType" value="plein" id="SapinsPlein" /> <label for="SapinsPlein">Un sapin plein</label><br />
                <input type="radio" name="sapinsType" value="vide" id="SapinsVide" /> <label for="SapinsVide">Un sapin vide</label><br />
                <input type="radio" name="sapinsType" value="couche" id="SapinsCouche" /> <label for="SapinsCouché">Un sapin couché</label><br />
            </p>
            <p>
                Veiller saisir une taille pour votre sapins<br />
                <label for="sapinsSize">Taille : <input type="text" name="sapinsSize" /></label>
                <input type="submit" value="Envoyer" />
            </p>
         </form>
    </body>
</html>
