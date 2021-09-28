package co.edu.sena.registrousuario.model.bean;

public class Producto {
    private int idProducto;
    private String nombreProducto;
    private String imagen;
    private String descripcion;

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdPrducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto= nombreProducto;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion= descripcion;
    }

    public void add(Producto producto) {
    }
}