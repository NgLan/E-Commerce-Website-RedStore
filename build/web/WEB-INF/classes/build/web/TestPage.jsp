<%-- 
    Document   : TestPage
    Created on : Oct 15, 2024, 9:54:48 PM
    Author     : NGOC LAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if (request.getAttribute("userID") != null) { %>
            User ID: ${userID}
        <% } else if (request.getAttribute("errorMessage") != null) { %>
            Error: ${errorMessage}
        <% } %>
    </body>
</html>
