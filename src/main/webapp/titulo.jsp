<%-- 
    Document   : titulo
    Created on : 05/10/2022, 10:30:21 PM
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
    <div class="alert alert-primary " role="alert">
        <center><h1 class="primary" >SISTEMA DE CONTROL DE MATRICULAS</h1></center>
    </div>
</body>
</html>

