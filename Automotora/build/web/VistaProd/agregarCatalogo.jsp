<%-- 
    Document   : agregarCatalogo
    Created on : 03-10-2022, 09:24:18
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AGREGAR VEHICULOS</title>
    </head>
    <body>
        <h2>DATOS DEL VEHICULO!</h2>
        <form action="registroVehiculos">
        <table border="5" bgcolor="fucsia" cellpadding="5" bordercolor="black">
            <tr><th>PATENTE</th><td><input type="text"      name="patente"/></td></tr>
            <tr><th>TIPO</th><td><input type="text" name="tipo"/></td></tr>
            <tr><th>MARCA</th><td><input type="text"        name="marca"/></td></tr>
            <tr><th>MODELO</th><td><input type="text"      name="modelo"/></td></tr>
            <tr><th>NETO</th><td><input type="text"      name="neto"/></td></tr>
            <tr><th>IVA</th><td><input disabled="disabled" type="text"      name="iva"/></td></tr>
            <tr><th>TOTAL</th><td><input disabled="disabled" type="text"      name="total"/></td></tr>
            <tr><th>ACEPTAR</th><td><input type="submit"   name="accion" value="aceptar"/></td></tr>            
        </table>
       </form>
    </body>
</html>
