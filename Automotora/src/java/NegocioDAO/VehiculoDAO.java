/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package NegocioDAO;

import Datos.Conexion;
import Modelo.Vehiculo;
import java.sql.*;
import java.util.ArrayList;
import java.util.*;
import ServiciosCRUD.CRUDVehiculo;

/*Implementa servicios CRUD del modelo*/
public class VehiculoDAO implements CRUDVehiculo 
{
    Conexion          conex=new Conexion();
    Connection        canal=null;
    PreparedStatement ps=null;
    ResultSet         resul=null;
    Vehiculo          vehiculo=new Vehiculo();
    String            sql=null;

    @Override
    public List listarVehiculos() 
    {
        ArrayList<Vehiculo> listado=new ArrayList<Vehiculo>();
        sql="SELECT * FROM VEHICULO";
        
        try 
        {
            canal=conex.abrirURL();
            ps=canal.prepareStatement(sql);
            resul=ps.executeQuery();
            
            while(resul.next())
            {
                Vehiculo vehiculo=new Vehiculo();
                
                vehiculo.setPatente(resul.getString(1));
                vehiculo.setTipo(resul.getString(2));
                vehiculo.setMarca(resul.getString(3));
                vehiculo.setModelo(resul.getString(4));
                vehiculo.setNeto(resul.getInt(5));
                vehiculo.setIva(resul.getInt(6));
                vehiculo.setTotal(resul.getInt(7));
                
                listado.add(vehiculo);            
            }
        } 
        catch (Exception e) 
        {
            System.out.println("ERROR EN CAPTURA DE DATO DEL VEHICULO :"+e.getMessage());
        }
        return listado;
    }

    @Override
    public Vehiculo buscarVehiculo(String patente) 
    {
        sql="SELECT * FROM VEHICULO WHERE(PATENTE='"+patente+"')";
        
        try 
        {
            canal=conex.abrirURL();
            ps=canal.prepareStatement(sql);
            resul=ps.executeQuery();
            
            while(resul.next())
            { 
                
                vehiculo.setPatente(resul.getString(1));
                vehiculo.setTipo(resul.getString(2));
                vehiculo.setMarca(resul.getString(3));
                vehiculo.setModelo(resul.getString(4));
                vehiculo.setNeto(resul.getInt(5));
                vehiculo.setIva(resul.getInt(6));
                vehiculo.setTotal(resul.getInt(7));
                                       
            }
        } 
        catch (Exception e) 
        {
            System.out.println("ERROR EN CAPTURA DE DATOS DEL VEHICULO :"+e.getMessage());
        }
        return vehiculo; 
    }

    @Override
    public boolean registrarVehiculo(Vehiculo vehiculo) 
    {
        try 
        {
              sql="INSERT INTO VEHICULO VALUES('"+vehiculo.getPatente()+"','"+vehiculo.getTipo()+"','"+vehiculo.getMarca()+"','"+vehiculo.getModelo()+"','"+vehiculo.getNeto()+"','"+vehiculo.getIva()+"','"+vehiculo.getTotal()+"')";
            canal=conex.abrirURL();
            ps=canal.prepareStatement(sql);
            ps.executeUpdate();
        } 
        catch (Exception e)
        {
              System.out.println("Error en Ingreso de Datos DAO");  
        }
    return false;
    }

    @Override
    public boolean modificarVehiculo(Vehiculo vehiculo) 
    {
        try 
        {
              sql="UPDATE VEHICULO SET TIPO='"+vehiculo.getTipo()+"', MARCA='"+vehiculo.getMarca()+"',MODELO='"+vehiculo.getModelo()+"', NETO='"+vehiculo.getNeto()+"', IVA='"+vehiculo.getIva()+"', TOTAL='"+vehiculo.getTotal()+"'  WHERE(PATENTE='"+vehiculo.getPatente()+"')";
            canal=conex.abrirURL();
            ps=canal.prepareStatement(sql);
            ps.executeUpdate();
        } 
        catch (Exception e) 
        {
              System.out.println("Error en Modificacion de Datos DAO");
        }
    return false;
    }

    @Override
    public boolean eliminarVehiculo(String patente) 
    {
        System.out.println("Patente :"+patente);
        try 
        {
            sql="DELETE FROM VEHICULO WHERE(PATENTE='"+patente+"')";
            canal=conex.abrirURL();
            ps=canal.prepareStatement(sql);
            ps.executeUpdate();   
        } 
        catch (Exception e) 
        {
            System.out.println("Error en Eliminacion de Datos DAO");   
        }
    return false;
    }  

   
}
