<%-- 
    Document   : contenido
    Created on : 05/10/2022, 10:28:31 PM
    Author     : jhons
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
HttpSession misession= (HttpSession) request.getSession();
String usuario= (String) misession.getAttribute("usuario");
if(misession == null || misession.getAttribute("usuario") == null){
      out.print("<link rel=\"stylesheet\" \n"
                + "              href=\"webjars/bootstrap/5.1.0/css/bootstrap.min.css\" type=\"text/css\" />");
      out.println("<center>");           
      out.println("<h3>No tiene permisos para acceder a esta seccion</h3>");
      out.println("<a class='btn btn-primary' href='index.html'>Ir a pagina de acceso</a>");
      out.println("</center>");
      return;
  }    
%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <br>
        <div class="container">
            <h1 class="display-50">Contenido de la Aplicacion</h1>
        </div>
    </body>
</html>
