<%-- 
    Document   : entorno.jsp
    Created on : 05/10/2022, 10:22:19 PM
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
        <title>SistemaWeb</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <frameset rows="80,*" border="0" frameborder="0" y framespacing="40">
          <frame src=titulo.jsp name=titulo>
          <frameset cols="250,*">
              <frame src=opciones.jsp name=izquierda>
              <frame src=contenido.jsp name=derecha>
          </frameset>
       </frameset> 
    </head>
</html>