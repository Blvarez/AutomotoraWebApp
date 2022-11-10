<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.*"%>
<%@page import="NegocioDAO.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MODIFICACION DE VEHICULOS</title>
        <link href="/Automotora/Estilos/editar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        
        <div class="cuadradoModificar">
            
            <div class="botonInicio">
                <a class="volverInicio" href="/Automotora/index.xhtml">INICIO</a>
            </div>
            
      <%   VehiculoDAO  dao=new VehiculoDAO();
           String patente=(String)request.getAttribute("patente");

           Vehiculo vehi=(Vehiculo)dao.buscarVehiculo(patente);
      %>
      
            <h2 class="tituloModi">MODIFICAR VEHICULO</h2>
            
            <form action="${pageContext.request.contextPath}/registroVehiculos">
                
                <table class="tablaModii" border="5" bgcolor="gray" cellpadding="6" bordercolor="white">
            
                    <tr>
                        <th class="tituloModi">PATENTE</th><td><input type="text"      name="patente"  value="<%=vehi.getPatente()%>">
                    </tr>
                
                    <tr>
                        <th class="tituloModi">TIPO</th><td><input type="text" name="tipo" value="<%=vehi.getTipo()%>">
                    </tr>
            
                    <tr>
                        <th class="tituloModi">MARCA</th><td><input type="text"        name="marca"    value="<%=vehi.getMarca()%>">
                    </tr>
            
                    <tr>
                        <th class="tituloModi">MODELO</th><td><input type="text"      name="modelo"  value="<%=vehi.getModelo()%>">
                    </tr>
                    
                    <tr>
                        <th class="tituloModi">NETO</th><td><input type="text"      name="neto"  value="<%=vehi.getNeto()%>">
                    </tr>
                    
                    <tr>
                        <th class="tituloModi">IVA</th><td><input disabled="disabled" type="text"      name="iva"  value="<%=vehi.getIva()%>">
                    </tr>
                    
                    <tr>
                        <th class="tituloModi">TOTAL</th><td><input disabled="disabled" type="text"      name="total"  value="<%=vehi.getTotal()%>">
                    </tr>
            
                </table>
                
                <input class="botonModi" type="submit" name="accion" value="ACTUALIZAR"></input>

            
            </form>
        </div>
    </body>
</html>

