<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Paraíso /Medellín/ - Sitio Oficial</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/logos/faviconParaisoWeb.png" rel="icon">

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
        <a href="index.jsp" class="navbar-brand bg-primary d-flex align-items-center px-lg-0 px-lg-2">
            <img src="img/logos/logoParWeb@3x.png" alt="Logo" width="200" height="50">
            <img src="img/logos/logoSITPAweb@3x.png" alt="Logo" width="40" height="50">
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <img src="img/logos/logoMetroParWeb.png" alt="Logo" width="180" height="50">
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <!-- <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Servicios</a>
                    <div class="dropdown-menu fade-up m-0">
                        <a href="" class="dropdown-item">Líneas</a>
                        <a href="" class="dropdown-item">Estaciones</a>
                        <a href="" class="dropdown-item">Mapas</a>
                    </div> -->
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">INGRESAR</a>
                <div class="dropdown-menu fade-up m-0">
                    <a href="https://www.roblox.com/games/8246576295" class="dropdown-item">Experiencia</a>
                    <a href="userStart.jsp" class="dropdown-item">Usuario</a>
                    <a href="adminStart.jsp" class="dropdown-item">Administrador</a>
                </div>
            </div>
            <a href="contact.html" class="nav-item nav-link">CONTACTO</a>
        </div>
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Carousel Start -->
    <div class="container-fluid p-0 pb-0">
        <div class="owl-carousel header-carousel position-relative mb-0">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/carousel/man-2unidades.png" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
                    style="background: rgba(6, 3, 21, .5);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-10 col-lg-8">
                                <h4 class="text-white text-uppercase mb-1 animated slideInDown">Transporte Integrado
                                </h4>
                                <h1 class="display-3 text-white animated slideInDown mb-1">Calidad <span
                                        class="text-primary">de vida</span></h1>
                                <h4 class="fs-5 fw-medium text-white mb-4 pb-1">Un sistema que conecta, vitaliza y
                                    transforma</h4>
                                <a href="userStart.jsp"
                                    class="btn btn-primary py-md-3 px-md-7 me-2 animated slideInLeft">¡Conócenos!</a>
                                <a href="https://www.roblox.com/games/8246576295" target="_blank"
                                    class="btn btn-secondary py-md-3 px-md-7 animated slideInRight">Ir a Roblox</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/carousel/metrocable-atardeceres.png" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center"
                    style="background: rgba(6, 3, 21, .5);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-10 col-lg-8">
                                <h4 class="text-white mb-1 animated slideInDown">Servicio de Movilidad: Conectamos la
                                    ciudad-región</h4>
                                <h1 class="display-3 text-white animated slideInDown mb-1"><span
                                        class="text-primary">Una experiencia </span>integrada</h1>
                                <h2 class="fs-10  text-uppercase fw-medium text-white mb-4 pb-1">Diseñada para tí</h2>
                                <a href="https://www.roblox.com/games/8246576295"
                                    class="btn btn-primary py-md-3 px-md-7 me-2 animated slideInRight">Última
                                    actualización: 24 de mayo de 2023</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->


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
                    <h4 class="text-light mb-4">Servicios</h4>
                    <a class="btn btn-link" href="civica.html">Cívica</a>
                    <a class="btn btn-link" href="metro.html">Metro</a>
                    <a class="btn btn-link" href="buses.html">Bus</a>
                </div>
                <div class="col-lg-3 col-md-7">
                    <h4 class="text-light mb-4">Directorio</h4>
                    <a class="btn btn-link" href="ourcompany.html">Nosotros</a>
                    <a class="btn btn-link" href="contact.html">Contacto</a>
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
                        &copy; <a class="border-bottom" href="">Sistema Integrado de Transporte de Paraíso - SITPA</a>,
                        Todos los derechos reservados.<br>
                        Los logos hacen parte de representaciones de empresas presentes en la región.
                    </div>
                    <div class="col-md-6 text-center text-md-end">
                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Diseñada por <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>. Distribuida
                        por <a class="border-bottom" href="https://themewagon.com" target="_blank">ThemeWagon</a>.<br>
                        Modificada para el SITPA. Siéntase libre de <a class="border-bottom" href="contact.html">comentarnos sus
                            inquietudes o mejoras</a>.
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