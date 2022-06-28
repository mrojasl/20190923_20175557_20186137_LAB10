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

    <title>LAB10</title>

    <!-- Custom fonts for this template-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!--link-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel = "icon" href =
            "https://assets.website-files.com/60b56cdf18d38e15ce088579/60c111551dc75d6dc896a30e_pucp-favicon.png"
          type = "image/x-icon">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!--link--stars-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        body{
            background-position: center ;
        }
    </style>
</head>
<body background ="Inicio_Sesion/fondo.jpg")>
    <div class="modal-fullscreen-sm-down text-center w-75 mt-5 rounded align-content-center ">
        <div class="col-sm-14" style="background-color: black" >
                <div class="mb-3">

                    <img class="mb-4 mt-4" src="Inicio_Sesion/logo.png" alt=" " width="230" height="230">
                    <p class="text-center" style="color: aliceblue; font-size: 25px" ><b>Bienvenido TeleViajero</b></p>

                    <form method="post" action="<%=request.getContextPath()%>/loginServlet?action=login">

                        <div class="mb-3 mt-3 ms-4 me-4">
                            <input type="text" class="form-control form-control-user" placeholder="Usuario">
                        </div>
                        <div class="mb-3 mt-3 ms-4 me-4">
                            <input type="text" class="form-control" placeholder="Contraseña">
                        </div>
                        <div class="mb-3 mt-4">
                            <button type="submit" class="btn btn-primary btn-user btn-block">
                                Ingresar
                            </button>
                        </div>

                    </form>

                    <div class="mb-1">
                        <span><a href="#" style="color: red">Soy nuevo y quiero registrarme</a></span>
                    </div>
                    <div>
                        <br>
                    </div>

                </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->


</body>
</html>
