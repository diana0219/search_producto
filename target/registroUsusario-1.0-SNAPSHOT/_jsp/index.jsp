<!DOCTYPE html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="co.edu.sena.registrousuario.model.bean.Producto"%>

<html>
<head>
    <title>Inicio .:. Mesa de ayuda</title>
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
                <a href="#" class="navbar-brand text-warning">JAVA</a>
                <div class="navbar-nav ms-auto">
                    <a href="index.jsp" class="nav-item nav-link active">Inicio</a>
                     <a href="registrarse.jsp" class="nav-item nav-link active">Registro</a>
                    <a href="login.jsp" class="nav-item nav-link ">Ingresar</a>
                    <a href="busqueda.jsp" class="nav-item nav-link">Busqueda</a></div>

            </div>

        </nav>
    </header>

</div>


<section id="search" class="section">
    <header class="imageheader"></header>
    <div class="container">
        <h2 class="headline">Buscar productos</h2>
        <form action="search" method="get">
            <label class="card-title">Buscar</label>
            <input type="search" name="search">
            <input type="submit" value="Search">
        </form>
    </div>
</section>

<script src="httpss://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="httpss://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="httpss://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>