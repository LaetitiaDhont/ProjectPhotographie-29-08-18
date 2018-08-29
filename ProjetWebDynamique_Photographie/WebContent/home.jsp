<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
 Monsieur Bidule Photographie
    <CENTER>
        <IMG SRC="Images/bibliotheque.jpg" width="500" height="250"
            ALIGN="BOTTOM">
    </CENTER>
    <div id="nav">
        <ul>
            <li><a href=home.jsp>HOME</a></li>
            <li><a href=prestations.jsp>Mes Prestations</a></li>
            <li><a href=devis.jsp>Devis</a></li>
            <li><a href=contact.jsp>Contact me</a></li>
        </ul>
        <div class="clear"></div>
    </div>
    <HR>
    <jsp:include page="footer.html"></jsp:include>
    <HR>

</body>
</html>