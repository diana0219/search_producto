package co.edu.sena.registrousuario.controller;

import co.edu.sena.registrousuario.model.bean.Producto;
import co.edu.sena.registrousuario.model.DAO.ProductoDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.List;

@SuppressWarnings("ALL")
@WebServlet("/search")
public class ProductoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //collect search string from the form
        String searchString = req.getParameter("search");

        //call DAO layer and get all products for search criteria
        ProductoDAO dao = new ProductoDAO();
        List<Producto> productos = dao.searchProducto(searchString);

        //write the products data back to the client browser
		/*String page = getHTMLString(req.getServletContext().getRealPath("/html/searchResults.html"), products);
		resp.getWriter().write(page);*/
        req.setAttribute("producto", productos);
        req.getRequestDispatcher("/_jsp/resultadoBusqueda.jsp").forward(req, resp);


    }



    public String getHTMLString(String filePath, List<Producto> productos) throws IOException{
        BufferedReader reader = new BufferedReader(new FileReader(filePath));
        String line="";
        StringBuffer buffer = new StringBuffer();
        while((line=reader.readLine())!=null){
            buffer.append(line);
        }

        reader.close();
        String page = buffer.toString();

        page = MessageFormat.format(page, productos.get(0).getNombreProducto(),
                productos.get(1).getImagen(),productos.get(2).getImagen(),
                productos.get(0).getNombreProducto(),productos.get(1).getNombreProducto(),
                productos.get(2).getDescripcion(),0);

        return page;


    }
}