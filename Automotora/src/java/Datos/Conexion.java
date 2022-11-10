/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;
import java.sql.*;
/**Singleton*/
public class Conexion {
    Connection   canal=null;
    String       DRIVER="com.mysql.jdbc.Driver";
    public Conexion()
    {  
        try 
        {
            Class.forName(DRIVER);
            canal=DriverManager.getConnection("jdbc:mysql://localhost/bdautomotoras", "root", "");
        } 
        catch (Exception e) 
        {
            System.out.println("ERROR en ajuste de Driver :"+e.getMessage());
        }
    }
    public Connection abrirURL()
    { 
        return canal;
    }
}
