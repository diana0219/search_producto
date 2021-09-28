package co.edu.sena.registrousuario.model.DAO;


import co.edu.sena.registrousuario.model.bean.UsuarioBean;
import co.edu.sena.registrousuario.model.utils.Conexion;
import java.sql.*;
import java.sql.PreparedStatement;


public class UsuarioDAO {





    public int registrarUsuario(UsuarioBean usuario) {
        int filasAfectadas = 0;

        try {

            //todo obtener conexion a la base de datos
            Connection con = Conexion.getConnectionToDataBase();


            // definir insert query

            String insertQuery = "insert into usuario values(upper (?),upper (?),?,aes_encript (?,"+" 'hythnbysidjsudjsdjbsn123');";


            // definir parametros con PreparedStatement

            PreparedStatement ps = con.prepareStatement(insertQuery);
            ps.setString(1, usuario.getNombreUsuario());
            ps.setString(2, usuario.getApellidoUsuario());
            ps.setString(3, usuario.getCorreoUsuario());
            ps.setString(4, usuario.getClaveUsuario());


            //ejecutar la consulta

            filasAfectadas=ps.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();



        }
        return filasAfectadas;
    }

}