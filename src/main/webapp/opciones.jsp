<%-- 
    Document   : opciones
    Created on : 05/10/2022, 10:29:43 PM
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
    <center>
        <div class="list-group jumbotron jumbotron-fluid mt-4">

            <h5 class="display-100 alert alert-success">OPCIONES DISPONIBLES</h5>
            <div class="alert alert-warning" role="alert">
                <h4>Mantenimientos</h4>
                <a href="/WebSistema/controladorPrincipal?accion=listadoAreas" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Registro Areas</a>
                <a href="/WebSistema/controladorPrincipal?accion=listadoAlumnos" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Registro Alumnos</a>
                <a href="/WebSistema/controladorPrincipal?accion=listadoCursos" class="list-group-item list-group-item-action list-group-item-secondary" 
                   target="derecha">Registro Cursos</a>
            </div>
            <div class="alert alert-primary" role="alert">
                <h4>Operaciones</h4>
                <a href="/WebSistema/controladorPrincipal?accion=matriculaMostrarAlumnos&modo=Lista" class="list-group-item" target="derecha">
                    Crear Matricula
                </a>
                <a href="/WebSistema/controladorPrincipal?accion=listadoMatriculas" class="list-group-item" target="derecha">
                    Lista de Matriculas
                </a>
            </div>
            <div class="alert alert-success" role="alert">
                <h4>Reportes</h4>
                <a href="/WebSistema/reportes/listadoAlumnos.jsp" class="list-group-item" target="derecha">
                    Listar Alumnos
                </a>
                <a href="/WebSistema/reportes/formularioListarAlumnosPorSexo.jsp" class="list-group-item" target="derecha">
                    Listar Alumnos por sexo
                </a>
                <a href="/WebSistema/reportes/listadoCursos.jsp" class="list-group-item" target="derecha">
                    Listar Cursos
                </a>
                <a href="/WebSistema/reportes/formularioListarMatriculasPorNdoc.jsp" class="list-group-item" target="derecha">
                    Matriculas por N° Cod
                </a>
            </div>
        </div>
    </center>
</body>
</html>
