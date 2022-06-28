<%--
  Created by IntelliJ IDEA.
  User: caleb
  Date: 27/06/2022
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>LAB 04</title>

    <!-- Custom fonts for this template-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
          crossorigin="anonymous">

    <style>
        body{
            background-image: url("Inicio_Sesion/fondo.jpg");
            background-position: center ;
        }
    </style>
</head>
<body background="Inicio_Sesion/fondo.jpg">
<div class="modal-dialog text-center w-75 mt-5 rounded " style="background-color: black" >
        <div class="col-sm-14">
            <form>
                <div class="mb-3">
                    <img class="mb-4 mt-4" src="Inicio_Sesion/logo.png" alt=" " width="230" height="230">
                    <p class="text-center" style="color: aliceblue; font-size: 25px" ><b>Bienvenido a TeleViajero</b></p>
                    <form class = "user">
                        <div class="mb-3 mt-3 ms-4 me-4">
                            <input type="email" class="form-control form-control-user" id="floatingInput" placeholder="Usuario">
                        </div>
                        <div class="mb-3 mt-3 ms-4 me-4">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Contraseña">
                        </div>
                        <div class="mb-3 mt-4">
                            <a href="pagina_principal.html" class="btn btn-primary btn-user btn-block">
                                Ingresar
                            </a>
                        </div>
                    </form>
                    <div class="mb-1">
                        <span><a href="#" style="color: red">Términos y condiciones</a></span>
                    </div>
                    <div>
                        <br>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="Inicio_Sesion/js/sb-admin-2.min.js"></script>

</body>
</html>
