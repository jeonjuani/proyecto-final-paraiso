<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Paraíso /Medellín/ - Estaciones</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/logos/favIconParaisoWeb@admin.png" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Roboto:wght@500;700&display=swap"
              rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Spinner Start -->
        <div id="spinner"
             class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Cargando...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow border-top border-5 border-primary sticky-top p-0">
            <a href="adminStart.jsp" class="navbar-brand bg-danger d-flex align-items-center px-lg-0 px-lg-2">
                <img src="img/logos/SITPA Minimalista@3x.png" alt="Logo" width="50" height="50" style="margin-left: 7px; margin-right: 10px">
                <!-- <img src="img/logos/logoParWeb@3x.png" alt="Logo" width="260" height="65"> -->
            </a>

            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <img src="img/logos/logoParWeb@Admin.png" alt="Logo" width="210" height="53" style="margin-top: 5px;">
            <h2 style="margin-top: 7px; margin-left: 10px" class="text-paraisocolor">| Bienvenido, administrador</h2>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                </div>
                <a href="https://www.roblox.com/games/8246576295" class="nav-item nav-link text-paraisocolor">ROBLOX</a>
                <a href="https://discord.com/invite/u87ydBvu" class="nav-item nav-link text-paraisocolor">DISCORD</a>
                <a href="https://trello.com/invite/paraisomedellin/ATTIe83befcdb77918cb2175b869cac4a7c844ABA976" class="nav-item nav-link text-paraisocolor">TRELLO</a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->



    <div class="container-xxl mb-5" style="margin-top: 10px">

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID </th>
                    <th>Línea</th>
                    <th>Nombre</th>
                    <th>Porcentaje de construcción</th>
                    <th>Barrio</th>
                    <th>Municipio</th>
                    <th>Entradas</th>
                    <th>
                        <div class="d-flex justify-content-center">
                            <a class="btn btn-primary rounded-pill py-1 px-2 text-center" style="margin-top: 5px;margin-bottom: 5px" href="${pageContext.request.contextPath}/StationServlet?accion=adminAddStation">Añadir estación</a>
                        </div>
                    </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="station" items="${stations}">
                    <tr>
                        <td>${station.id_station}</td>
                        <td>${station.id_line}</td>
                        <td>${station.commercial_name}</td>
                        <td>${station.build_percentage}</td>
                        <td>${station.neighborhood_name}</td>
                        <td>${station.municipality_name}</td>
                        <td>${station.amount_of_entrances}</td>
                        <td><!--
                            <div class="d-flex justify-content-center">
                                <a class="btn btn-danger rounded-pill py-1 px-3 text-center" style="margin-top: 10px; margin-bottom: 10px" href="${pageContext.request.contextPath}/StationServlet?accion=eliminar&id_station=${station.id_station}">Eliminar</a>
                            </div>

-->                        </td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>

    <!-- Footer Start -->
    <div class="container-fluid bg-danger text-light footer pt-5 wow fadeIn" data-wow-delay="0.1s"
         style="margin-top: 0rem;">
        <div class="container py-2 mt-0">
            <div class="row g-5">
                <div class="col-lg-3 col-md-7">
                    <h4 class="text-light mb-4">Dirección</h4>
                    <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Bello, Colombia</p>
                    <p class="mb-2"><i class="fa fa-envelope me-3"></i>juan.castro17@udea.edu.co</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href="https://twitter.com/ParaisoMetroMed"
                           target="_blank"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social"
                           href="https://www.youtube.com/watch?v=m35xGvtwy1c&ab_channel=JuanPabloCastro"
                           target="_blank"><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-outline-light btn-social" href="https://discord.gg/u87ydBvu"
                           target="_blank"><i class="fab fa-discord"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-7">
                    <h4 class="text-light mb-4">Documentación</h4>
                    <a class="btn btn-link" href="https://drive.google.com/drive/folders/1nb3A9efGjAY3-KvfWkm9oOj4GdEsH7lx?usp=share_link">Identidad Visual</a>
                    <a class="btn btn-link" href="https://drive.google.com/drive/folders/1kbEjfwhpZ46TcX6rDF6Lt4sLJR8k-tAs?usp=sharing">Galería Interna</a>
                    <a class="btn btn-link" href="buses.html">Formulario</a>
                </div>
                <div class="col-lg-3 col-md-7">
                    <h4 class="text-light mb-4">Directorio</h4>
                    <a class="btn btn-link" href="adminLines.jsp">Administrar líneas</a>
                    <a class="btn btn-link" href="adminStations.jsp">Administrar estaciones</a>
                    <a class="btn btn-link" href="https://www.roblox.com/games/8246576295">Roblox</a>
                </div>
                <div class="col-lg-3 col-md-7 text-md-end">
                    <img src="img/logos/logoSITPAfooter.png" alt="Logo" width="130" height="175">
                    <img src="img/logos/Nuevo Logo Areametropol Web_Mesa de trabajo 1.png" alt="Logo" width="135"
                         height="180">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="copyright">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a class="border-bottom" href="index.jsp">Sistema Integrado de Transporte de Paraíso - SITPA</a>,
                        Todos los derechos reservados.<br>
                        Los logos hacen parte de representaciones de empresas presentes en la región.
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Diseñada por <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>. Distribuida
                        por <a class="border-bottom" href="https://themewagon.com" target="_blank">ThemeWagon</a>.<br>
                        Modificada para el SITPA. Sesión de Administrador</a>.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <!-- <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a> -->


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>