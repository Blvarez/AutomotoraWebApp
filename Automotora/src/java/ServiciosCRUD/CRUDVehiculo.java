/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package ServiciosCRUD;
import Modelo.Vehiculo;
import java.util.List;
public interface CRUDVehiculo {
    public List listarVehiculos();
    public Vehiculo buscarVehiculo(String patente);
    public boolean registrarVehiculo(Vehiculo vehiculo);
    public boolean modificarVehiculo(Vehiculo vehiculo);
    public boolean eliminarVehiculo(String patente);
}
