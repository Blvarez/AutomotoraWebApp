package Modelo;

public class Vehiculo {
    
    private String patente;
    private String tipo;
    private String marca;
    private String modelo;
    private int neto;
    private int iva;
    private int total;

    public Vehiculo() {
    }

    public Vehiculo(String patente, String tipo, String marca, String modelo, int neto, int iva, int total) {
        this.patente = patente;
        this.tipo = tipo;
        this.marca = marca;
        this.modelo = modelo;
        this.neto = neto;
        this.iva = iva;
        this.total = total;
    }

    public String getPatente() {
        return patente;
    }

    public void setPatente(String patente) {
        this.patente = patente;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getNeto() {
        return neto;
    }

    public void setNeto(int neto) {
        this.neto = neto;
    }

    public int getIva() {
        return iva;
    }

    public void setIva(int iva) {
        this.iva = iva;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
    
    
    
    
    
    
    
}
