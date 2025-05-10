<%@page import="java.util.Collections"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%
    Map<String, String> nomes = new HashMap();
 
    nomes.put("indice_1", "Edson");
    nomes.put("indice_2", "Fernanda");
    nomes.put("indice_3", "Paula");
    nomes.put("indice_4", "Carlos");
 
    for (String indice : nomes.keySet()) {
        out.print(indice + " = " + nomes.get(indice) + "<br>");
    }
 
%>
