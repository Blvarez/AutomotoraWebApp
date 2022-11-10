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
        <title>LISTA VEHICULOS</title>
        <link href="Utilitarios/maqueta.css" rel="stylesheet" type="text/css"/>
    </head>
    <body >
    <center>
        <img src="Imagenes/Desierto.jpg" style="width:100%; height: 100%;
                     position: absolute; left:0px;top:0px;z-index: -1"/>
        <a href="registroVehiculos?accion=registrarVeh">Agregar Nuevo Vehiculo</a>
        <!--<table border="5" bgcolor="cyan" cellpadding="5">-->
        <table class="gritable">
          <thead>
            <tr><th bgcolor="00AAE4">PATENTE</th>
                <th bgcolor="00AAE4">TIPO</th>
                <th bgcolor="00AAE4">MARCA</th>
                <th bgcolor="00AAE4">MODELO</th>
                <th bgcolor="00AAE4">NETO</th>
                <th bgcolor="00AAE4">IVA</th>
                <th bgcolor="00AAE4">TOTAL</th>
                <th bgcolor="00AAE4">MODIFICAR</th><th bgcolor="00AAE4">ELIMINAR</th></tr>
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
            <tr><td bgcolor="00AAE4"><%=vehi.getPatente()%></td>
            <td bgcolor="00AAE4"><%=vehi.getTipo()%></td>
            <td bgcolor="00AAE4"><%=vehi.getMarca()%></td>
            <td bgcolor="00AAE4"><%=vehi.getModelo()%></td>
            <td bgcolor="00AAE4"><%=vehi.getNeto()%></td>
            <td bgcolor="00AAE4"><%=vehi.getIva()%></td>
            <td bgcolor="00AAE4"><%=vehi.getTotal()%></td>
            <td bgcolor="00AAE4"><a href="registroVehiculos?accion=editarVeh&patente=<%=vehi.getPatente()%>">Editar Vehiculo</a>
            <td bgcolor="00AAE4"><a href="registroVehiculos?accion=eliminarVeh&patente=<%=vehi.getPatente()%>">Eliminar Vehiculo</a>                
            </tr>
            <%}%>
          </tbody> 
        </table>
     </center>
    </body>
</html>
