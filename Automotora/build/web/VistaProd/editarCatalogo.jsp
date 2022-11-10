<%-- 
    Document   : editarCatalogo
    Created on : 03-10-2022, 10:43:08
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*"%>
<%@page import="NegocioDAO.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EDICION DE VEHICULOS</title>
    </head>
    <body>
    <h2>EDICION DE DATOS!</h2>
      <%   VehiculoDAO  dao=new VehiculoDAO();
           String patente=(String)request.getAttribute("patente");
           out.println("Captura Patente "+patente);
           Vehiculo vehi=(Vehiculo)dao.buscarVehiculo(patente);
           out.println("Retorno Patente "+vehi.getPatente());
      %>
    <h3>Modificar Vehiculo de la Automotora</h3>
    <form action="registroVehiculos">
        <table border="5 bgcolor=fucsia">
            <tr><th>PATENTE</th><td><input type="text"      name="patente"  value="<%=vehi.getPatente()%>"></tr>
            <tr><th>TIPO</th><td><input type="text" name="tipo" value="<%=vehi.getTipo()%>"></tr>
            <tr><th>MARCA</th><td><input type="text"        name="marca"    value="<%=vehi.getMarca()%>"></tr>
            <tr><th>MODELO</th><td><input type="text"      name="modelo"  value="<%=vehi.getModelo()%>"></tr>
            <tr><th>NETO</th><td><input type="text"      name="neto"  value="<%=vehi.getNeto()%>"></tr>
            <tr><th>IVA</th><td><input disabled="disabled" type="text"      name="iva"  value="<%=vehi.getIva()%>"></tr>
            <tr><th>TOTAL</th><td><input disabled="disabled" type="text"      name="total"  value="<%=vehi.getTotal()%>"></tr>
            <tr><th>MODIFICAR</th><td><input type="submit" name="accion"  value="actualizar"></tr>
         </table>
        </form>
    </body>
</html>
