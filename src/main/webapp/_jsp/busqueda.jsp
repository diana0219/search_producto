<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="co.edu.sena.registrousuario.model.bean.Producto"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<main>

    <section id="productos" class="section">
        <div class="container">
            <h2 class="headline">Busqueda productos</h2>
        </div>


        <%--fetch he products from the rqq object --%>
        <%-- iterate the list and generate the display for every product --%>


        <div class="productoContainer">

            <%
                List<Producto> producto = (ArrayList) request.getAttribute("productos");
                Iterator<Producto> iterator = producto.iterator();
                while (iterator.hasNext()) {
                    Producto productos = iterator.next();
            %>
            <form method="get" action="personajes">

                <div class="productContainerItem">
                    <img id="pic3" src="<%=productos.getImagen()%>">
                    <input type="text" name="producto" value="<%=productos.getNombreProducto()%>"><br/>
                    <button>Add to Cart</button>
                </div>
            </form>
            <%
                }
            %>
        </div>
    </section>
    <!-- #products -->

    <section id="search" class="section">
        <header class="imageheader"></header>
        <div class="container">
            <h2 class="headline">Search Products</h2>
            <form action="search" method="get">
                <label class="card-title">Search your product</label>
                <input type="search" name="search">
                <input type="submit" value="Search">
            </form>
        </div>
    </section>

</main>

</body>
</html>
