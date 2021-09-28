<%--
  Created by IntelliJ IDEA.
  User: sebas
  Date: 5/09/2021
  Time: 4:34 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ingresar</title>
    <meta name="viewport" content="width-device.width, iniciatl-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>

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
        <section class= "form-login">
            <h4>Ingresar</h4>
            <form  class="needs-validation" action="" method="post">
                <div class="mb-.5" id="ingresardiv">

                        <%--@declare id="ingresar"--%>
                    <%--@declare id="password"--%>
                            <label for="ingresar" class="form-label fw-bold">Correo:</label><br>
                            <input class="controls" type="text" name="ingresar" id="ingresar" required autofocus
                                   placeholder="email.."
                                   aria-describedby="correohelp"><span class="text-danger">*</span>
                            <div id="correohelp" class="form-text"></div>
                            <div class="valid-feedback"></div>
                            <div class="invalid-feedback">Por favor revise que los datos correspondan</div>


                            <label for="password" class="form-label fw-bold">Contraseña:</label><br>
                            <input  class="controls" type="password" name="contraseña" id="contraseña" required autofocus
                                    placeholder="contraseña.."
                                    aria-describedby="contraseñahelp"><span class="text-danger">*</span>
                            <div id="contraseñahelp" class="form-text"></div>
                            <div class="valid-feedback"></div>
                            <div class="invalid-feedback">Por favor revise que los datos correspondan</div>


                            <input class="bottom" type="submit" value="Ingresar">
                            <p><a href="#">¿Olvidó su contraseña?</a></p>
                </div>

            </form>
        </section>
    </main>
    </div>

</body>
</html>
