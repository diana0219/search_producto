<%--
  Created by IntelliJ IDEA.
  User: sebas
  Date: 29/08/2021
  Time: 6:35 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width-device.width, iniciatl-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
    <title> Registro</title>
</head>

<body >
<div class="container">
    <header>
        <nav class="navbar-expand-xl bg-secondary navbar-dark">
            <div class="container-fluid">
                <a href="#" class="navbar-brand text-warning">Mesa de ayuda</a>
                <div class="navbar-nav ms-auto">
                    <a href="index.jsp" class="nav-item nav-link ">Inicio</a>
                    <a href="registrarse.jsp" class="nav-item nav-link active">Registro</a>
                    <a href="login.jsp" class="nav-item nav-link ">Ingresar</a>
                </div>

            </div>
        </nav>
    </header>
    <main>
        <section class="form-registro">
            <h4>Formulario Registro</h4>
            <em>{0}</em>
            <em></em>

            <form  class="needs-validation" action="/registro" method="post">

                <div class="mb-.5" id="nombresdiv">
                    <%--@declare id="correo"--%><%--@declare id="contraseña"--%>
                    <label for="nombres" class="form-label fw-bold">Nombres:</label><br>
                    <input class="controls"type="text" name="nombres" id="nombres" required autofocus
                           placeholder="nombres.."
                           pattern="[a-zA-Z]{2,30}"
                           aria-describedby="nombrehelp"><span class="text-danger">*</span><br>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback">Por favor revise que los datos correspondan</div>

                    <%--@declare id="apellidos"--%>
                    <label for="apellidos" class="form-label fw-bold">Apellidos:</label><br>
                    <input class="controls" type= "text" name="apellidos" id="apellidos" required autofocus
                           placeholder="apellidos.."
                           pattern="[a-zA-Z]{2,30}"
                           aria-describedby="apellidoshelp"><span class="text-danger">*</span><br>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback">Por favor revise que los datos correspondan</div>


                        <label for="correo" class="form-label fw-bold">Email:</label><br>
                    <input class="controls"  type="email" name="correo" id="correo" required autofocus
                           placeholder="email.."
                           aria-describedby="correohelp"><span class="text-danger">*</span>
                    <div id="correohelp" class="form-text"></div><br>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback">Por favor revise que los datos correspondan</div>

                        <label for="password" class="form-label fw-bold">Contraseña:</label><br>
                        <input  class="controls" type="password" name="password" id="password" required autofocus
                               placeholder="contraseña.."
                               aria-describedby="contraseñahelp"><span class="text-danger">*</span>
                        <div id="contraseñahelp" class="form-text"></div><br>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback">Por favor revise que los datos correspondan</div>

                        <p> Estoy de acuerdo con <a href="#">Terminos y condiciones</a></p>

                        <input class="bottom" type="submit" value="Registrar">
                        <p><a href="#">Ya tengo cuenta</a></p>

                </div>
            </form>
        </section>
    </main>
</div>
</body>
</html>
