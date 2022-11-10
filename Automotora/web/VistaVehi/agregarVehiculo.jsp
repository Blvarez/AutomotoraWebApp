<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AGREGAR VEHICULOS</title>
        <link href="/Automotora/Estilos/agregar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="cuadradoAgregar">
            
            <div class="botonInicio">
                <a class="volverInicio" href="/Automotora/index.xhtml">INICIO</a>
            </div>
            
            <h2 class="tituloAgrr">DATOS DEL VEHICULO</h2>
        
            <form action="${pageContext.request.contextPath}/registroVehiculos">
            
                <table class="tablaAgr" border="5" bgcolor="gray" cellpadding="6" bordercolor="white">
                
                    <tr>
                        <th class="tituloAgr">PATENTE</th>
                        <td>
                            <input type="text"      name="patente"/>
                        </td>
                    </tr>
                
                    <tr>
                        <th class="tituloAgr">TIPO</th>
                        <td>
                            <input type="text" name="tipo"/>
                        </td>
                    </tr>
                
                    <tr>
                        <th class="tituloAgr">MARCA</th>
                        <td>
                            <input type="text"        name="marca"/>
                        </td>
                    </tr>
                
                    <tr>
                        <th class="tituloAgr">MODELO</th>
                        <td>
                            <input type="text"      name="modelo"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="tituloAgr">NETO</th>
                        <td>
                            <input type="text"      name="neto"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="tituloAgr">IVA</th>
                        <td>
                            <input disabled="disabled" type="text"      name="iva"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <th class="tituloAgr">TOTAL</th>
                        <td>
                            <input disabled="disabled" type="text"      name="total"/>
                        </td>
                    </tr>
                         
            </table>
            <input class="botonAgr" type="submit" name="accion" value="ACEPTAR"></input>
         </form>
        </div>
        </body>
</html>
