package co.edu.sena.registrousuario.controller;

import co.edu.sena.registrousuario.model.DAO.UsuarioDAO;
import co.edu.sena.registrousuario.model.bean.UsuarioBean;
import java.io.*;
import java.text.MessageFormat;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;


@WebServlet(name = "/registro")
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {


        // recolectar todos los datos

        String nombreUsuario =req.getParameter("nombres");
        String apellidoUsuario =req.getParameter("apellidos");
        String correoUsuario =req.getParameter("correo");
        String claveUsuario =req.getParameter("password");



        // pasar los datos al UsuarioBean

        UsuarioBean usuario =new UsuarioBean(nombreUsuario,apellidoUsuario,correoUsuario,claveUsuario);

        // llamar la capa DAO y guardar los datos del objeto ususario

        UsuarioDAO dao = new  UsuarioDAO();
        int filas= dao.registrarUsuario(usuario);


        // preparar información acerca del exito o falla de la operación
            String mensaje =null;
            if (filas ==0){
                mensaje="Se produjo un error";
            }else {
                mensaje="Registro exitoso";
            }
            //
        String page =getHtmlString(req.getServletContext().getRealPath("/_jsp/registrarse.jsp"),mensaje);
            resp.getWriter().write(page);


    }   //end doPost


    public String getHtmlString(String filePath, String mensaje) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader(filePath));
        String line="";
        StringBuffer buffer= new StringBuffer();
        while ((line =reader.readLine())!=null){
            buffer.append(line);

        }
        reader.close();
        String page =buffer.toString();
        page = MessageFormat.format(page,mensaje);

        return page;

    }

    @Override
    protected  void doGet(HttpServletRequest req,HttpServletResponse resp ) throws ServletException, IOException {
        String page = getHtmlString(req.getServletContext().getRealPath("/_jsp/registrarse.jsp"),"");
        resp.getWriter().write(page);

    }

}
