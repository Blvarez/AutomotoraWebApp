<%-- 
    Document   : listarCatalogo
    Created on : 28-09-2022, 15:43:19
    Author     : Alumno
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*"%>
<%@page import="NegocioDAO.*"%>
<%@page import="ServiciosCRUD.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTAR VEHICULOS</title>
        <link href="/Automotora/Estilos/listar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body >
        
        <div class="cuadradoListar">
            
            <div class="botonInicio">
                <a class="volverInicio" href="/Automotora/index.xhtml">INICIO</a>
            </div>
            <h2 class="tituloListt">LISTA DE VEHICULOS</h2>
        
    
        <table class="tablaList">
          <thead>
            <tr><th class="cuadradoSuperior">PATENTE</th>
                <th class="cuadradoSuperior">TIPO</th>
                <th class="cuadradoSuperior">MARCA</th>
                <th class="cuadradoSuperior">MODELO</th>
                <th class="cuadradoSuperior">NETO</th>
                <th class="cuadradoSuperior">IVA</th>
                <th class="cuadradoSuperior">TOTAL</th>
                <th class="cuadradoSuperior">MODIFICAR</th>
                <th class="cuadradoSuperior">ELIMINAR</th></tr>
          </thead>
          <%
              VehiculoDAO dao=new VehiculoDAO();
              List<Vehiculo> lst=dao.listarVehiculos();
              Iterator<Vehiculo> iter=lst.iterator();
              Vehiculo vehi=null;
              while(iter.hasNext())
              {  vehi=iter.next();
          %>
          <tbody>
            <tr><td class="cuadradoInferior"><%=vehi.getPatente()%></td>
            <td class="cuadradoInferior"><%=vehi.getTipo()%></td>
            <td class="cuadradoInferior"><%=vehi.getMarca()%></td>
            <td class="cuadradoInferior"><%=vehi.getModelo()%></td>
            <td class="cuadradoInferior"><%=vehi.getNeto()%></td>
            <td class="cuadradoInferior"><%=vehi.getIva()%></td>
            <td class="cuadradoInferior"><%=vehi.getTotal()%></td>
            <td class="cuadradoInferior"><a class="botonModi" href="${pageContext.request.contextPath}/registroVehiculos?accion=editarVeh&patente=<%=vehi.getPatente()%>">Editar Vehiculo</a>
            <td class="cuadradoInferior"><a class="botonEli" href="${pageContext.request.contextPath}/registroVehiculos?accion=eliminarVeh&patente=<%=vehi.getPatente()%>">Eliminar Vehiculo</a>                
            </tr>
            <%}%>
          </tbody>
          
        </table>
        </div>
    </body>
</html>
