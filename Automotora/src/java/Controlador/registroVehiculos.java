/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;
import Modelo.*;
import NegocioDAO.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "registroVehiculos", urlPatterns = {"/registroVehiculos"})
public class registroVehiculos extends HttpServlet {

    String agregarVeh="VistaVehi/agregarVehiculo.jsp";
    String editarVeh="VistaVehi/editarVehiculo.jsp";
    String listarVeh="VistaVehi/listarVehiculo.jsp";
    
    VehiculoDAO  vehiculodao=new VehiculoDAO();
    Vehiculo     vehiculo=new Vehiculo();
   
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registroVehiculos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registroVehiculos at " + request.getContextPath() + "</h1>");
            out.println("<h2>Servicio de gestion de Vehiculos</h2>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        //System.out.println("Ingreso por GET/UDP");
        
        String acceso=null;
        String action=request.getParameter("accion");
        
        if(action.equalsIgnoreCase("presentarDatos"))
        {
            acceso=listarVeh;
            System.out.println("Generar Listado");
        } 
        
        else if(action.equalsIgnoreCase("registrarVeh"))
        { 
            acceso=agregarVeh;
            System.out.println("Generar Listado");
        }
        
        else if(action.equalsIgnoreCase("aceptar"))
        {  
            System.out.println("En aceptar");
           
            String patente=request.getParameter("patente");
            vehiculo.setPatente(patente);
            
            String tipo=request.getParameter("tipo");
            vehiculo.setTipo(tipo);
            
            String marca=request.getParameter("marca");
            vehiculo.setMarca(marca);
            
            String modelo=request.getParameter("modelo");
            vehiculo.setModelo(modelo);
            
            String neto= request.getParameter("neto");
            int netoo =  Integer.parseInt(neto);
            vehiculo.setNeto(netoo);
            
            int iva = 19;
            vehiculo.setIva(iva);
            
            double tasa=0.19;
            double total_tasa= netoo * tasa;
            
            double totall = netoo + total_tasa;
            
            int termino=(int)totall;
            vehiculo.setTotal(termino);
            
            vehiculodao.registrarVehiculo(vehiculo);
            acceso=listarVeh;//Refresh
        }
        
        else if(action.equalsIgnoreCase("editarVeh"))
        {  
            System.out.println("En edicion");
            request.setAttribute("patente", request.getParameter("patente"));
            acceso=editarVeh;
        }
        
        else if(action.equalsIgnoreCase("actualizar"))
        {  
            System.out.println("En modificacion");
            System.out.println("Patente no modificable...");
            
            String patente=request.getParameter("patente");
            vehiculo.setPatente(patente);
            
            String tipo=request.getParameter("tipo");
            vehiculo.setTipo(tipo);
            
            String marca=request.getParameter("marca");
            vehiculo.setMarca(marca);
            
            String modelo=request.getParameter("modelo");
            vehiculo.setModelo(modelo);
            
            String neto= request.getParameter("neto");
            int netoo =  Integer.parseInt(neto);
            vehiculo.setNeto(netoo);
            
            int iva = 19;
            vehiculo.setIva(iva);
            
            double tasa=0.19;
            double total_tasa= netoo * tasa;
            
            double totall = netoo + total_tasa;
            
            int termino=(int)totall;
            
            System.out.println(totall);
            System.out.println(termino);
            
            vehiculo.setTotal(termino);
            
            vehiculodao.modificarVehiculo(vehiculo);
            acceso=listarVeh;
        }
        
        else if(action.equalsIgnoreCase("eliminarVeh"))
        {  
            System.out.println("En eliminacion");
            String patente=request.getParameter("patente");
            vehiculodao.eliminarVehiculo(patente);
            acceso=listarVeh;//Refresh
        }
        RequestDispatcher VistaProd=request.getRequestDispatcher(acceso);
        VistaProd.forward(request, response);        
    }
    
     
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
