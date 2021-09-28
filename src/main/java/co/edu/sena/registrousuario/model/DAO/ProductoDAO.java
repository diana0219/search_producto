package co.edu.sena.registrousuario.model.DAO;

import co.edu.sena.registrousuario.model.bean.Producto;
import co.edu.sena.registrousuario.model.utils.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {
    public List<Producto> searchProducto(String searchString) {
        Producto producto = null;
        List<Producto> productos = new ArrayList<>();

        try {
            Connection connection = Conexion.getConnectionToDataBase();

            String sql = "select * from productos where nombreProducto like '%" + searchString + "%'";

            Statement statement = connection.createStatement();

            ResultSet set = statement.executeQuery(sql);

            while (set.next()) {
                producto = new Producto();
                producto.setIdPrducto(set.getInt("idProducto"));
                producto.setNombreProducto(set.getString("nombreProducto"));
                producto.setImagen(set.getString("imagen"));
                producto.setDescripcion(set.getString("descripcion"));
                producto.add(producto);

            }

        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return productos;
    }

}