<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <h1><%out.print("Bem vindo");%></h1>
        
        <h2>Hoje é dia: 
            <%
                Date data = new Date();
                
                SimpleDateFormat dt = new SimpleDateFormat("dd/MM/yyyy");
                
                out.print(dt.format(data));
                out.print(" Olá: " + Integer.parseInt("20"));
            %>
        </h2>
    </body>
</html>
